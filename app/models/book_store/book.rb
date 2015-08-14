module BookStore
  class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
  end
end
