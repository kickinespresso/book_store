class CreateBookStoreAuthors < ActiveRecord::Migration
  def change
    create_table :book_store_authors do |t|
      t.string :name
      t.text :description
      t.string :slug

      t.timestamps null: false
    end
    add_index :book_store_authors, :slug, unique: true
  end
end
