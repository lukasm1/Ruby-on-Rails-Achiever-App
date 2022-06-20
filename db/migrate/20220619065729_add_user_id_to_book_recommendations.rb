class AddUserIdToBookRecommendations < ActiveRecord::Migration[7.0]
  def change
    add_column :book_recommendations, :user_id, :integer
    add_index :book_recommendations, :user_id
  end
end
