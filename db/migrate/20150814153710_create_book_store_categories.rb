class CreateBookStoreCategories < ActiveRecord::Migration
  def change
    create_table :book_store_categories do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps null: false
    end
    add_index :book_store_categories, :slug, unique: true
  end
end
