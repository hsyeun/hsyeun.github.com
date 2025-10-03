require 'time'

module Jekyll
  class GitDateGenerator < Generator
    priority :low

    def generate(site)
      site.posts.docs.each do |post|
        relative_path = post.path.sub(site.source + '/', '')

        # 해당 파일의 최초 추가 커밋 시간들 (디렉토리 이동 포함)
        git_times = `git log --follow --diff-filter=A --format="%ci" -- "#{relative_path}"`.strip.split("\n")

        if !git_times.empty?
          created_time = Time.parse(git_times.last)

          # post.date 와 내부 캐시(@date) 모두 덮어쓰기
          post.data['date'] = created_time
          post.instance_variable_set(:@date, created_time)

        else
          # Git 기록 없을 경우 → 파일 생성시간 fallback
          begin
            created_time = File.birthtime(post.path)
          rescue
            created_time = File.mtime(post.path)
          end

          post.data['date'] = created_time
          post.instance_variable_set(:@date, created_time)
        end
      end
    end
  end
end