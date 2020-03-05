class AddPriceToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :price, :integer
  end
end
