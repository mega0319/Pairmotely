class AddCurrentTableToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :current_table, :integer
  end
end
