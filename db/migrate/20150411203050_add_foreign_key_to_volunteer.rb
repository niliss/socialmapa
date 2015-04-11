	class AddForeignKeyToVolunteer < ActiveRecord::Migration
  def change
  	add_column :volunteers, :event_id, :integer
  end
end
