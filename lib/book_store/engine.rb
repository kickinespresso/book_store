require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'
require 'activeadmin'

module BookStore
  class Engine < ::Rails::Engine


    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'

    isolate_namespace BookStore


    initializer :book_store do

      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/admin']

    end

    config.generators do |g|
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

  end
end
