class AddAddressFieldtoEvents < ActiveRecord::Migration
  def change
  	add_column :events, :address, :string
  	add_column :events, :city, :string
  	add_column :events, :country, :string
  	add_column :events, :street, :string
  end
end
