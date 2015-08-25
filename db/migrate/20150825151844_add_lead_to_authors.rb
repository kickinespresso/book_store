class AddLeadToAuthors < ActiveRecord::Migration
  def change
    add_column :book_store_authors, :lead, :string
  end
end
