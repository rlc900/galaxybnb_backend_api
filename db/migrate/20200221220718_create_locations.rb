class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :image

      t.belongs_to :type
      t.belongs_to :planet
      t.timestamps
    end
  end
end
