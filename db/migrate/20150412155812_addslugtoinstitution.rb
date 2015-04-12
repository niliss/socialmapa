class Addslugtoinstitution < ActiveRecord::Migration
  def change
  	add_column :institutions, :slug, :string, unique: true
  end
end
