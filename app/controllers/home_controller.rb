class HomeController < ApplicationController
	def index
		if current_user
			user = current_user
			@activities = user.activities 
			@debits = user.activities.where(expense_type: "Debit").pluck(:amount).inject(:+)
			@credits = user.activities.where(expense_type: "Credit").pluck(:amount).inject(:+)
		end
	end
end
