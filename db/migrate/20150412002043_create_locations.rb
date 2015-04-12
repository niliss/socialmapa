class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :locatable_id
      t.string :locatable_type
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
