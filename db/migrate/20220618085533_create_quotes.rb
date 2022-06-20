class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.string :text
      t.references :achiever, null: false, foreign_key: true

      t.timestamps
    end
  end
end
