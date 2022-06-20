class CreateAchieverBookRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :achiever_book_recommendations do |t|
      t.references :achiever, null: false, foreign_key: true
      t.references :book_recommendation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
