class AddForeignKeyToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :insitution_id, :integer
  end
end
