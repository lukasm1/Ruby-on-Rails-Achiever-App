class AddUserIdToAchievers < ActiveRecord::Migration[7.0]
  def change
    add_column :achievers, :user_id, :integer
    add_index :achievers, :user_id
  end
end
