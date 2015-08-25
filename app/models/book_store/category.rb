module BookStore
  class Category < ActiveRecord::Base
    has_many :books
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
  end
end
