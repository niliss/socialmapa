class AddColumnLatitudeLongitudToEvent < ActiveRecord::Migration
  def change
  	add_column :events, :latitude, :float
  	add_column :events, :longitude, :float
  	remove_column :institutions, :picture, :string
  end
end
