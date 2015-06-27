class ActivitiesController < ApplicationController
	def new
		@activity = Activity.new
	end

	def create
		@user = current_user
		@activity = @user.activities.create(activities_params)
		if @activity.save
			redirect back
		end
	end

	def index
		@activities = Activity.all
	end

	def edit
		@activity = Activity.find(params: id)
	end

	def update
		@activity = Activity.find(params: id)
		@activity.update_attributes
	end

	def destroy
		@activity = Activity.find(params: id)
		@activity.destroy
	end

	private

	def activities_params
		params.require(:activity).permit(:title, :expense_type, :amount)
	end
end
