---
layout: post
title:  "상태관리가 성능에 미치는 영향"
categories: frontend
tags: [React, React DevTools, Refactoring, useState, useCallback, useMemo, Profiler, Performance]
image: assets/images/post/2025/2025-10-17-frontend_react_state_refactoring.jpg
pin: true
published: true
---


React를 처음 배울 때는 `useState`를 그냥 **"React에서 변수를 선언하는 방법"** 정도로 이해했다.  
(정말 뭘 모를 때의 이야기다!!)  
   

하지만 useState는 단순한 변수가 아니다.  
괜히 이름이 **"State"**가 아닌 것. 공식문서에는 이렇게 설명되어 있다.  

> The set function returned by useState lets you update the state to a different value and trigger a re-render.  
> (참조 : [react/useState](https://react.dev/reference/react/useState#setstate))

즉, useState의 set 함수가 호출되면 컴포넌트가 다시 렌더링된다.  

React는 state가 바뀌면 UI가 이전 상태와 다를 수 있다고 판단하고 그 컴포넌트를 다시 실행시켜 Virtual DOM을 새로 계산한다. 그래서 useState를 필요 이상으로 많이 사용하면 컴포넌트가 자주 리렌더링되어 **불필요한 성능 저하**를 일으킨다.  


## 상태는 기억해야 할 값만 두자

예전에 이런 식으로 작성한 적이 있었다.  

```jsx
const location = useLocation();
const [btnName, setBtnName] = useState("Black");
const [btnLink, setBtnLink] = useState("/color/black");
const [hide, setHide] = useState(false);
const [isBlack, setIsBlack] = useState(false);

useEffect(() => {
  if(location.pathname.includes("black")){
      setBtnName("Return White");
      setBtnLink("/color/white");
      setHide(true);
      setIsBlack(true);
  } else {
      setBtnName("Black");
      setBtnLink("/color/black");
      if(location.pathname.includes("/point/")){
          setHide(false);
      } else {
          setHide(true);
      }
      setIsBlack(false);
  }
}, [location])
```

지금 보면 이 코드는 useState를 너무 많이 쓰고 있다.  
사실 이 네 개의 값(btnName, btnLink, hide, isBlack)은 전부 location만으로 계산할 수 있다. 경로(`/color/black`, `/color/white`)에 따라 자동으로 정해지는 값들이라 굳이 상태로 저장할 필요가 없다.  

이걸 간결하게 바꾼 리팩토링 버전은 아래와 같다.  

```jsx
const location = useLocation();
const isBlack = location.pathname.includes("black");
const isPoint = location.pathname.includes("/point/");

const btnName = isBlack ? "Return White" : "Black";
const btnLink = isBlack ? "/color/white" : "/color/black";
const hide = !isPoint;
```

이렇게 바꾸면 useState가 줄어들 뿐더러 useEffect를 쓸 일도 없어지고, 렌더링 시점에 한 번만 계산하면 되기 때문에 훨씬 단순해진다!  


## 함수와 값의 재생성도 막자🛡️

useState를 줄여서 불필요한 렌더링은 막았지만 렌더링될 때마다 새로 만들어지는 함수나 값들도 신경써야 한다.  

React는 컴포넌트가 리렌더링될 때 내부의 함수와 객체를 새로 생성한다. 즉 같은 함수처럼 보여도 내부적으로는 매번 다른 참조값으로 인식한다는 말인데, 이 때문에 자식 컴포넌트로 props를 전달하거나 이벤트 리스너를 등록할 때 불필요한 리렌더링이나 메모리 누수가 발생할 수 있다.  

이를 방지하기 위해 `useCallback`과 `useMemo`를 활용할 수 있다.  


### 함수 재생성 방지 (useCallback)

예전에 팝업을 닫는 기능을 이렇게 작성했다.    

```jsx
function closePop(e) {
    if (e.target instanceof Element) {
        if(!e.target.closest(".pop")){
            setPopOpen(false);
        }
    }
}

useEffect(() => {
    document.addEventListener("mousedown", closePop);
    document.addEventListener("scroll", closePop);
    return () => {
        document.removeEventListener("mousedown", closePop);
        document.removeEventListener("scroll", closePop);
    }
}, []);
```

문제는 이 함수가 렌더링될 때마다 새로 생성된다는 점이다.  

이 상태에서 **addEventListener**로 등록했다면 **removeEventListener**가 기존 함수 참조를 찾지 못해 제대로 해제되지 않는다.  

이를 `useCallback`으로 감싸면 렌더링이 되어도 동일한 함수 참조를 유지할 수 있다.


```jsx
const closePop = useCallback((e) => {
    if (e.target instanceof Element && !e.target.closest(".pop")) {
        setPopOpen(false);
    }
}, []);

useEffect(() => {
    document.addEventListener("mousedown", closePop);
    document.addEventListener("scroll", closePop);
    return () => {
        document.removeEventListener("mousedown", closePop);
        document.removeEventListener("scroll", closePop);
    }
}, []);
```

useCallback은 의존성 배열([])이 바뀌지 않는 한 같은 함수 인스턴스를 재사용한다. 덕분에 이벤트 리스너가 안정적으로 관리되고 자식 컴포넌트의 불필요한 리렌더링도 줄어든다.  


### 값 재생성 방지 (useMemo)

함수뿐 아니라 계산 비용이 큰 값이나 JSX도 매번 새로 만들어질 수 있다.  
예를 들어, 설정 버튼 아이콘을 상태에 따라 바꾸는 코드를 이렇게 작성한 적이 있다.  

```jsx
const linkBtnIcon = isBlack ? <RxExit size="18" /> : <IoSettingsOutline size="20" />
```

이 JSX는 isBlack이 바뀌지 않아도 매번 새로 생성된다. 렌더링 비용은 크지 않지만 여러 곳에서 이런 코드가 쌓이면 차츰 쓸데없는 Virtual DOM diff가 발생한다.  

이를 `useMemo`로 감싸면 isBlack이 바뀔 때만 새로 계산한다.

```jsx
const linkBtnIcon = useMemo(() => {
    return isBlack ? <RxExit size="18" /> : <IoSettingsOutline size="20" />
}, [isBlack]);
```

## Profiler로 확인한 차이

리팩토링의 전후를 React DevTools Profiler로 비교했다.  
UI는 같지만 렌더링 패턴은 확실히 달랐다.    

![As-Is](/assets/images/post/2025/2025-10-17-frontend_react_state_refactoring_as_is.jpg)  *As-Is*

![To-Be](/assets/images/post/2025/2025-10-17-frontend_react_state_refactoring_to_be.jpg)  *To-Be*


### 비교분석

| 항목                  | As-Is       | To-Be       | 개선 효과                                 |
| ------------------- | ----------- | ----------- | ------------------------------------- |
| **렌더 횟수**           | 9회          | 9회          | 동일 (측정 시나리오 동일)                       |
| **평균 렌더링 시간**       | 28.0 ms     | 26.2 ms     | 🔽 약 6% 개선                            |
| **평균 후반부 렌더링**      | 44 ms  | ~23 ms | 🔽 약 50% 감소  (`useCallback`, 파생 상태 제거 효과) |
| **초기 렌더링 (0~0.3s)** | 29 ms   | 10 ms | 🔽 약 65% 개선  (불필요한 `useState` 초기화 제거 효과)             |

초기 렌더링 속도가 가장 크게 개선되었다. useState 초기화 과정이 줄어들면서 불필요한 렌더링이 사라졌기 때문이다.


React를 사용하다 보면 항상 신중해지는 질문이 있다. 
> "이 값은 정말 상태여야 할까?"

이번 리팩토링은 그 질문에 대한 좋은 사례였다.  
state를 줄였을 뿐인데 렌더링이 훨씬 안정적이고 가벼워졌다.  
useCallback과 useMemo를 함께 사용해 불필요한 함수와 값의 재생성까지 줄이니 React의 렌더링 사이클이 훨씬 단순해졌다.  

결국 상태 관리의 핵심은 "무엇을 기억하지 않을 것인가"를 결정하는 일이다.  
필요한 것만 기억하고, 나머지는 계산하자. 그게 React를 빠르고 효율적으로 만드는 가장 확실한 방법이다.