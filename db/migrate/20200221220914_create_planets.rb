class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :climate
      t.string :terrain
      t.string :image

      t.timestamps
    end
  end
end
