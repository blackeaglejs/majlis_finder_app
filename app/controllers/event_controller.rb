class EventController < ApplicationController
	before_action :load_user
	before_action :load_profile, except: [:index]
	before_action :authenticate_user!

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		# I need to figure out how guests and host roles will be handled.
	end

	def show
		@event = Event.find(@event.id)
	end

	def edit
	end

	def update
	end

	private

	def load_user
		@user = current_user
	end

	def load_profile
		if @user.profile
			@profile = Profile.find(params[:id])
		end
	end

	def event_params
		# This needs to be done once you've figured out the migration and schema for events.
	end
end