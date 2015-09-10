class Event < ActiveRecord::Base
	belongs_to :profile, dependent: :destroy
	has_many :guests
end