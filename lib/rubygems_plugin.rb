require 'rubygems'

# Define common functionality as a method
def clone_gem_repository(spec)
  return unless spec

  # Get git repository URL from homepage and source_code_uri
  urls = [spec.homepage, spec.metadata["source_code_uri"]].compact

  # Filter URLs (non-empty, GitHub/GitLab only, no "/tree" paths)
  git_urls = urls.select do |url|
    url && !url.empty? && url.match?(/github\.com|gitlab\.org/) && !url.match?(/\/tree/)
  end.uniq

  # Clone each found repository using ghq
  git_urls.each do |git_url|
    puts "Cloning repository for #{spec.name}: #{git_url}"
    system("ghq get #{git_url}")
  end
end

# Register hook to be called after gem installation
Gem.post_install do |installer|
  clone_gem_repository(installer.spec)
end
