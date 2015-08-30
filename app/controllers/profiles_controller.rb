class ProfilesController < ApplicationController
	before_action :load_user
	before_action :load_profile, except: [:index]
	before_action :authenticate_user!

	def index
		@profiles = Profile.all
	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
		@profile.user = @user
		if @profile.save
			redirect_to profile_path(@profile.id)
		else
			redirect_to new_profile_path
		end
	end

	def show
		@profile = Profile.find(@profile.id)
	end

	def edit
	end

	def update
		@profile.update(profile_params)
		if @profile.update(profile_params)
			redirect_to profile_path(@profile.id)
		else
			redirect_to edit_profile_path
		end
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

	def profile_params
		params.require(:profile).permit(:name, :phone, :zip, :role)
	end
end