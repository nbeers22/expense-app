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

	def july_debit
		@user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def july_credit
		@user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end
end
