---
layout: post
title:  "18.1이 18.1000003814로 저장된다고? ::부동소수"
categories: aidata
tags: [SQL, JavaScript, Float, Decimal, Precision, Numeric]
image: 
published: false
---


```sql
SELECT *
FROM TEMP_TBL
WHERE CAST(VARCHAR_VALUE AS FLOAT) > 18.1
```