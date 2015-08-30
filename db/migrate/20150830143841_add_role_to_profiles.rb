class AddRoleToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :role, :integer
  end
end
