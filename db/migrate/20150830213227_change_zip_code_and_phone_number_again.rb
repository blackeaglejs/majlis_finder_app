class ChangeZipCodeAndPhoneNumberAgain < ActiveRecord::Migration
  def change
  	change_column :profiles, :phone, :string
  	change_column :profiles, :zip, :string
  end
end
