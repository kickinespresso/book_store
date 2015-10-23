class CreateBookStoreContributors < ActiveRecord::Migration
  def change
    create_table :book_store_contributors do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps null: false
    end

    BookStore::Book.all.each do |book|
      BookStore::Contributor.create(author_id: book.author_id, book_id: book.id)
    end
  end
end
