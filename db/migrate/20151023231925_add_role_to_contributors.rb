class AddRoleToContributors < ActiveRecord::Migration
  def change
    add_column :book_store_contributors, :role, :integer
  end
end
