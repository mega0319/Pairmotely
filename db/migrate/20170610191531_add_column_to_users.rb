class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :play_chips, :integer
  end
end
