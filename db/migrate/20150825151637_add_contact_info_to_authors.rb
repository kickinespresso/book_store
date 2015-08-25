class AddContactInfoToAuthors < ActiveRecord::Migration
  def change
    add_column :book_store_authors, :website_link, :string
    add_column :book_store_authors, :email_link, :string
    add_column :book_store_authors, :facebook_link, :string
    add_column :book_store_authors, :twitter_link, :string
  end
end
