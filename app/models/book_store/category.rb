module BookStore
  class Category < ActiveRecord::Base
    has_many :book_store_books, :class_name => 'BookStore::Book'
  end
end
