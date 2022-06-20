class CreateBookRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :book_recommendations do |t|
      t.string :title
      t.string :author
      t.string :area

      t.timestamps
    end
  end
end
