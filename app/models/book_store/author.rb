module BookStore
  class Author < ActiveRecord::Base
    has_many :books
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
    mount_uploader :avatar_image, ImageUploader

    validates_presence_of :first_name, :last_name

    def name
      "#{first_name} #{last_name}"
    end
  end
end
