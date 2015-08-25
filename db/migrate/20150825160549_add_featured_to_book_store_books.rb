class AddFeaturedToBookStoreBooks < ActiveRecord::Migration
  def change
    add_column :book_store_books, :featured, :boolean
    add_column :book_store_books, :position, :integer
    add_column :book_store_books, :featured_image, :string
  end
end
