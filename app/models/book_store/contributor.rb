module BookStore
  class Contributor < ActiveRecord::Base
    belongs_to :author
    belongs_to :book
  end
end
