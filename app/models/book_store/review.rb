module BookStore
  class Review < ActiveRecord::Base
    belongs_to :book
  end
end
