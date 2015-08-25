require 'bootstrap-sass'
require 'friendly_id'
require 'simple_form'
require 'activeadmin'
require 'carrierwave'
require 'fog/aws/storage'

module BookStore
  class Engine < ::Rails::Engine

    require 'jquery-rails'
    require 'jquery-ui-rails'
    require 'ckeditor'

    isolate_namespace BookStore

    initializer :book_store do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/admin']
    end

    # putting this here rather than config/initializers so that Storytime is configured before getting there
    initializer "book_store.configure_carrierwave" do
      CarrierWave.configure do |config|
        if BookStore.media_storage == :s3
          config.storage = :fog
          config.fog_credentials = {
              :provider               => 'AWS',
              :region                 => BookStore.aws_region,
              :aws_access_key_id      => BookStore.aws_access_key_id,
              :aws_secret_access_key  => BookStore.aws_secret_key
          }
          config.fog_directory  = BookStore.s3_bucket
          config.fog_public     = true
          config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
        else
          config.storage = :file
        end

        config.enable_processing = !Rails.env.test?
      end
    end

    config.generators do |g|
      g.test_framework      :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

  end
end
