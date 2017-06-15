class ChangeColumnOnUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :play_chips, :integer, :default => 3000
  end
end
