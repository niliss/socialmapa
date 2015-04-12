class ChangeInstitutionColumIdInEvent < ActiveRecord::Migration
  def change
  	rename_column :events, :insitution_id, :institution_id
  end
end
