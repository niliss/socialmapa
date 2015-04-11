class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :picture
      t.integer :category
      t.text :description
      t.string :phone
      t.string :address
      t.string :email
      t.string :website

      t.timestamps null: false
    end
  end
end
