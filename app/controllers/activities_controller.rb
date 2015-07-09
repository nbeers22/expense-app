class ActivitiesController < ApplicationController
	before_action :find_user, only: [:create,:edit,:index]
	before_action :find_activity, only: [:update,:destroy]

	def new
		@activity = Activity.new
	end

	def create
		@activity = @user.activities.create(activities_params)
		root
	end

	def index
		@activities = user.activities
	end

	def edit
		@activity = @user.activities.find(params[:id])
	end

	def update
		@activity.update_attributes(activities_params)
		root
	end

	def destroy
		@activity.destroy
		root
	end

	private

	def find_user
		@user = User.find(params[:user_id])
	end

	def find_activity
		@activity = Activity.find(params[:id])
	end

	def root
		redirect_to :root
	end

	def activities_params
		params.require(:activity).permit(:title, :expense_type, :amount, :category)
	end
end
