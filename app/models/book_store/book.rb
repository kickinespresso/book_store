module BookStore
  class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    enum cover_type: [:soft, :hard]
  end
end
