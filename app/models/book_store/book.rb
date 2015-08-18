module BookStore
  class Book < ActiveRecord::Base
    belongs_to :book_store_author, :class_name => 'BookStore::Author'
    belongs_to :book_store_category, :class_name => 'BookStore::Category'
  end
end
