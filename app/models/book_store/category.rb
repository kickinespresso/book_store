module BookStore
  class Category < ActiveRecord::Base
    has_many :books
  end
end
