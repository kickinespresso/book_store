require 'thor/group'

module BookStore
  module Generators
    class Initializer < Thor::Group
      include Thor::Actions

      argument :settings, :type => :hash

      class_option :force, :type => :boolean, :default => false

      source_root File.expand_path('../../../generators/templates', __FILE__)

      def set_local_assigns
        @user_class = settings[:user_class]

        @post_title_character_limit = settings[:post_title_character_limit]
        @post_excerpt_character_limit = settings[:post_excerpt_character_limit]
        @enable_file_upload = settings[:enable_file_upload]
        @aws_region = settings[:aws_region]
        @aws_access_key_id = settings[:aws_access_key_id]
        @aws_secret_key = settings[:aws_secret_key]
        @s3_bucket = settings[:s3_bucket]
        @prod_media_storage = settings[:prod_media_storage]
        @dev_media_storage = settings[:dev_media_storage]

      end

      def copy_initializer
        template "book_store.rb", "config/initializers/storytime.rb"
      end
    end
  end
end