Gem::Specification.new do |s|
  s.name        = "rubygems-ghq"
  s.version     = "0.1.2"
  s.authors     = ["SHIBATA Hiroshi"]
  s.email       = ["hsbt@ruby-lang.org"]
  s.homepage    = "https://github.com/hsbt/rubygems-ghq"
  s.summary     = "Clone git repositories of installed gems with ghq"
  s.description = "A RubyGems plugin that automatically clones git repositories of gems after installation"
  s.license     = "MIT"

  s.files         = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]
end
