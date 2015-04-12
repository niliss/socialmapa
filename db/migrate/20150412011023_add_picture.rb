class AddPicture < ActiveRecord::Migration
  def change
  	add_attachment :institutions, :logo
  end
end
