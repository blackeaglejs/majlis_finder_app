class ChangeZipCodeAndPhoneNumber < ActiveRecord::Migration
  def change
  	change_column :profiles, :phone, :text
  	change_column :profiles, :zip, :text
  end
end
