class ActivitiesController < ApplicationController
	def new
		@activity = Activity.new
	end

	def create
		@user = User.find(params[:user_id])
		@activity = @user.activities.create(activities_params)
		redirect_to :root
	end

	def index
		user = User.find(params[:user_id])
		@activities = user.activities
	end

	def edit
		@activity = Activity.find(params[:id])
	end

	def update
		@activity = Activity.find(params[:id])
		@activity.update_attributes
	end

	def destroy
		# @activity = Activity.find(params[:id]
		# @activity.destroy
	end

	def show

	end

	private

	def activities_params
		params.require(:activity).permit(:title, :expense_type, :amount)
	end
end
