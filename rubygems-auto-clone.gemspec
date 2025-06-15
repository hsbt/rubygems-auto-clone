Gem::Specification.new do |s|
  s.name        = "rubygems-auto-clone"
  s.version     = "0.2.0"
  s.authors     = ["SHIBATA Hiroshi"]
  s.email       = ["hsbt@ruby-lang.org"]
  s.homepage    = "https://github.com/hsbt/rubygems-auto-clone"
  s.summary     = "Automatically clone git repositories of installed gems"
  s.description = "A RubyGems plugin that automatically clones git repositories of gems after installation"
  s.license     = "MIT"

  s.files         = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]
end
