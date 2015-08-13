$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "book_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "book_store"
  s.version     = BookStore::VERSION
  s.authors     = ["Chris Desch"]
  s.email       = ["cdesch@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BookStore."
  s.description = "TODO: Description of BookStore."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
