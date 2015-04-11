class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :initial_date
      t.date :end_date
      t.boolean :type

      t.timestamps null: false
    end
  end
end
