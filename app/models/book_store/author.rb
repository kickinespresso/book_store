module BookStore
  class Author < ActiveRecord::Base
    has_many :book_store_books, :class_name => 'BookStore::Book'
  end
end
