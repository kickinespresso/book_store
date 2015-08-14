class CreateBookStoreBooks < ActiveRecord::Migration
  def change
    create_table :book_store_books do |t|
      t.string :title
      t.string :lead
      t.text :excerpt
      t.text :description
      t.decimal :price
      t.integer :cover_type
      t.integer :num_pages
      t.string :isbn
      t.integer :year
      t.string :buy_link
      t.string :size
      t.string :cover_image
      t.string :slug
      t.references :author, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :book_store_books, :slug, unique: true
  end
end
