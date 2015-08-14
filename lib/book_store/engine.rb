require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'

module BookStore
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'
    isolate_namespace BookStore
  end
end
