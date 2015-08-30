require "book_store/engine"

module BookStore
  # Model to use for users.
  mattr_accessor :user_class
  @@user_class = 'User'

  # Path used to sign users in.
  mattr_accessor :login_path
  @@login_path = '/users/sign_in'

  # Path used to sign users out.
  mattr_accessor :logout_path
  @@logout_path = '/users/sign_out'

  # Path used to register a new user.
  mattr_accessor :registration_path
  @@registration_path = "/users/sign_up"

  # Method used for Storytime user logout path.
  mattr_accessor :logout_method
  @@logout_method = :delete

  # Enable file uploads through Carrierwave.
  mattr_accessor :enable_file_upload
  @@enable_file_upload = true

  # Character limit for Storytime::Post.title <= 100
  mattr_accessor :post_title_character_limit
  @@post_title_character_limit = 100

  # Character limit for Storytime::Post.excerpt
  mattr_accessor :post_excerpt_character_limit
  @@post_excerpt_character_limit = 500


  # AWS Region to use for file uploads.
  mattr_accessor :aws_region
  #@@aws_region = ENV['STORYTIME_AWS_REGION']

  # AWS Access Key ID to use for file uploads.
  mattr_accessor :aws_access_key_id
  #@@aws_access_key_id = ENV['STORYTIME_AWS_ACCESS_KEY_ID']

  # AWS Secret Key to use for file uploads.
  mattr_accessor :aws_secret_key
  #@@aws_secret_key = ENV['STORYTIME_AWS_SECRET_KEY']

  class << self
    attr_accessor :layout, :media_storage, :s3_bucket, :post_types
    def configure

      yield self
    end

    def user_class
      @@user_class.constantize
    end

    def user_class_underscore
      @@user_class.underscore
    end

    def user_class_underscore_all
      @@user_class.underscore.gsub('/', '_')
    end

    def user_class_symbol
      @@user_class.underscore.to_sym
    end

    def application_controller_superclass
      @@application_controller_superclass.constantize
    end
  end
end
