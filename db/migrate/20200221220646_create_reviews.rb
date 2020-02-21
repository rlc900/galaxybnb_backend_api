class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.belongs_to :user
      t.belongs_to :location
      t.timestamps
    end
  end
end
