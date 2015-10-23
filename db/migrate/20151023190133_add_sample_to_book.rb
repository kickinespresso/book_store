class AddSampleToBook < ActiveRecord::Migration
  def change
    add_column :book_store_books, :sample, :text
  end
end
