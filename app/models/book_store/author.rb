module BookStore
  class Author < ActiveRecord::Base
    has_many :books
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
    mount_uploader :avatar, ImageUploader
  end
end
