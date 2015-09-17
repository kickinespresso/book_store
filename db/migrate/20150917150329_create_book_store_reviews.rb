class CreateBookStoreReviews < ActiveRecord::Migration
  def change
    create_table :book_store_reviews do |t|
      t.text :content
      t.string :name
      t.string :publication
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
