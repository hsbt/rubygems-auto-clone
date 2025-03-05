require 'rubygems'

def clone_gem_repository(spec)
  return unless spec

  urls = [spec.homepage, spec.metadata["source_code_uri"]].compact

  git_urls = urls.select do |url|
    url && !url.empty? && url.match?(/github\.com|gitlab\.org/) && !url.match?(/\/tree/)
  end.uniq

  git_urls.each do |git_url|
    puts "#{spec.name}: #{git_url}"
    system("ghq get #{git_url}")
  end
end

Gem.post_install do |installer|
  clone_gem_repository(installer.spec)
end
