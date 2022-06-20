class CreateAchieverHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :achiever_habits do |t|
      t.references :achiever, null: false, foreign_key: true
      t.references :habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
