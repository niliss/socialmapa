class ChangeFieldTypeLatLong < ActiveRecord::Migration
  def change
  	change_column :events, :latitude, :decimal
  	change_column :events, :longitude, :decimal
  end
end
