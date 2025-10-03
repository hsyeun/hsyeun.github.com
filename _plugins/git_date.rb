require 'time'

module Jekyll
  class GitDateGenerator < Generator
    priority :low

    def generate(site)
      site.posts.docs.each do |post|
        # Git 로그 확인용 절대 경로
        absolute_path = File.expand_path(post.path, site.source)

        # 최초 추가된 커밋 시간 가져오기 (--diff-filter=A = 추가된 기록만)
        git_times = `git log --follow --diff-filter=A --format="%ci" -- "#{absolute_path}"`.strip.split("\n")

        if !git_times.empty?
          # 최초 커밋 시간 = 맨 마지막 기록
          created_time = Time.parse(git_times.last)
        else
          # Git 기록 없을 경우 → 파일 생성/수정 시간 사용
          created_time =
            if File.respond_to?(:birthtime)
              begin
                File.birthtime(post.path)
              rescue
                File.mtime(post.path)
              end
            else
              File.mtime(post.path)
            end
        end

        # post.date 와 내부 캐시(@date) 모두 덮어쓰기
        post.data['date'] = created_time
        post.instance_variable_set(:@date, created_time)
      end
    end
  end
end