class CreateAchievers < ActiveRecord::Migration[7.0]
  def change
    create_table :achievers do |t|
      t.string :name
      t.string :area_of_expertise

      t.timestamps
    end
  end
end
