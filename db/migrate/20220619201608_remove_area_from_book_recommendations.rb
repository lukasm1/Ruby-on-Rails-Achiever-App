class RemoveAreaFromBookRecommendations < ActiveRecord::Migration[7.0]
  def change
    remove_column :book_recommendations, :area, :string
  end
end
