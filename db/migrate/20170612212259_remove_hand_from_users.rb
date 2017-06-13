class RemoveHandFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :hand
  end
end
