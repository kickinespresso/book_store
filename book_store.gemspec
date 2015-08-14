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
  s.test_files = Dir["spec/**/*"]
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "friendly_id", ">= 5.0"
  s.add_dependency "simple_form", ">= 3.0"
  s.add_dependency "kaminari", ">= 0.15"
  s.add_dependency 'bootstrap-sass', '~> 3.3.4'
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency "jquery-rails", "~> 4.0.4"
  s.add_dependency "jquery-ui-rails", "~> 5.0.5"
  s.add_dependency 'ckeditor','~> 4.1.3'
  s.add_dependency  'acts-as-taggable-on', '~> 3.4'

  #dummy dependency
  s.add_dependency "devise", ">= 3.5.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'spork'


end
