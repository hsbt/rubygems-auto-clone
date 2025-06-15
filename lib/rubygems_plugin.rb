require 'rubygems'

def clone_gem_repository(spec)
  return unless spec

  urls = [spec.homepage, spec.metadata["source_code_uri"]].compact

  git_urls = urls.select do |url|
    url && !url.empty? && url.match?(/github\.com|gitlab\.com/) && !url.match?(/\/tree/)
  end.uniq

  git_urls.each do |git_url|
    puts "#{spec.name}: #{git_url}"
    
    # Check if git-goget is available, if so use git goget instead of ghq get
    if system("which git-goget > /dev/null 2>&1")
      system("git goget #{git_url}")
    else
      system("ghq get #{git_url}")
    end
  end
end

Gem.post_install do |installer|
  clone_gem_repository(installer.spec)
end
