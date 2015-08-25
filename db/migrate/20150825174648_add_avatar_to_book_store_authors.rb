class AddAvatarToBookStoreAuthors < ActiveRecord::Migration
  def change
    add_column :book_store_authors, :avatar_image, :string
  end
end
