module BookStore
  class Author < ActiveRecord::Base
    has_many :books
  end
end
