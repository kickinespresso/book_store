module BookStore
  class Book < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
    has_many :contributors
    has_many :authors, through: :contributors

    belongs_to :category
    has_many :reviews
    enum cover_type: [:soft, :hard]
    scope :featured, -> { where featured: true }
    scope :not_featured, -> { where featured: false }
    paginates_per 12
    mount_uploader :cover_image, ImageUploader
    mount_uploader :featured_image, ImageUploader
    accepts_nested_attributes_for :reviews, :allow_destroy => true
    accepts_nested_attributes_for :contributors, :allow_destroy => true


    validates_presence_of :title, :lead, :excerpt, :year, :description, :price, :cover_type, :isbn, :num_pages, :size, :category
    validate :has_one_contributor_at_least

    def author
      self.contributors.first.author
    end
    def has_one_contributor_at_least
      if self.contributors.empty?
        errors.add(:contributors, "need one contributor at least")
      end
    end
  end
end
