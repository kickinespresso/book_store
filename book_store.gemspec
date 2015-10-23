$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "book_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "book_store"
  s.version     = BookStore::VERSION
  s.authors     = ["Chris Desch"]
  s.email       = ["chris@kickinespresso.com"]
  s.homepage    = "http://www.kickinespresso.com"
  s.summary     = "Basic Book store gem"
  s.description = "This gem is the working views and admin panels for a book store."
  s.license     = "MIT"
  s.test_files = Dir["spec/**/*"]
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.MD"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "friendly_id", ">= 5.0"
  s.add_dependency "simple_form", ">= 3.0"
  s.add_dependency "kaminari", ">= 0.15"
  s.add_dependency 'bootstrap-sass', '~> 3.3.4'
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency "jquery-rails", "~> 4.0.4"
  s.add_dependency "jquery-ui-rails", "~> 5.0.5"
  s.add_dependency 'ckeditor','~> 4.1.3'
  s.add_dependency 'acts-as-taggable-on', '~> 3.4'
  s.add_dependency 'activeadmin','~> 1.0.0.pre1'
  s.add_dependency "fog", "1.31.0"
  s.add_dependency "carrierwave", ">= 0.9"
  s.add_dependency "mini_magick", ">= 3.7"
  s.add_dependency "thor", "~> 0.19.1"
  #dummy dependency
  s.add_dependency "devise", ">= 3.5.2"
  s.add_dependency 'ckeditor','~> 4.1.3'


  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'spork'
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "faker"


end
