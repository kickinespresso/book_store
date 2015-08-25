class AddShortDescriptionToBookStoreAuthors < ActiveRecord::Migration
  def change
    add_column :book_store_authors, :short_description, :string
  end
end
