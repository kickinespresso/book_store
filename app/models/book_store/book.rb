module BookStore
  class Book < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    belongs_to :author
    belongs_to :category
    enum cover_type: [:soft, :hard]
    scope :featured, -> { where featured: true }

    mount_uploader :cover_image, ImageUploader
    mount_uploader :featured_image, ImageUploader

    validates_presence_of :title, :lead, :excerpt, :description, :price, :cover_type, :isbn, :num_pages, :size, :featured, :author, :category
  end
end
