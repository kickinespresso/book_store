require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'

module BookStore
  class Engine < ::Rails::Engine


    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'

    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    isolate_namespace BookStore
  end
end
