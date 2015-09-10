class Profile < ActiveRecord::Base
	enum role: {app_user: 0, admin: 1}
	belongs_to :user
	has_and_belongs_to_many :events, dependent: :destroy
end