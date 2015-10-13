class AddLastNameToAuthor < ActiveRecord::Migration
  def change
    add_column :book_store_authors, :last_name, :string
    rename_column :book_store_authors, :name, :first_name
  end
end
