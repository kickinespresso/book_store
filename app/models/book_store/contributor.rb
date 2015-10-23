module BookStore
  class Contributor < ActiveRecord::Base
    belongs_to :author
    belongs_to :book

    enum role: [ :author, :editor, :illustrator ]

    validates_presence_of :role

  end
end
