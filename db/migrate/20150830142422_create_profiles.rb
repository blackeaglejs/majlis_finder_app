class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.integer :phone
    	t.integer :zip
    	t.references :user, index: :true
    end
  end
end
