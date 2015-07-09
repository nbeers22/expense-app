class HomeController < ApplicationController
	def index
		if current_user
			user = current_user
			@activities = user.activities 
			@debits = total_debit
			@credits = total_credit

			@bills = user.activities.where(category: "Bills")
			@bills_debit = bill_debit
			@bills_credit = bill_credit

			@businesses = user.activities.where(category: "Business")
			@businesses_debit = business_debit
			@businesses_credit = business_credit

			@clothing = user.activities.where(category: "Clothing")
			@clothing_debit = bill_debit
			@clothing_credit = bill_credit

			@foods = user.activities.where(category: "Food")
			@foods_debit = bill_debit
			@foods_credit = bill_credit

			@gases = user.activities.where(category: "Gas")
			@gases_debit = bill_debit
			@gases_credit = bill_credit

			@household_supplies = user.activities.where(category: "Household Supplies")
			@household_supplies_debit = bill_debit
			@household_supplies_credit = bill_credit

			@medicals = user.activities.where(category: "Medical")
			@medicals_debit = bill_debit
			@medicals_credit = bill_credit

			@personals = user.activities.where(category: "Personal")
			@personals_debit = bill_debit
			@personals_credit = bill_credit

			@pets = user.activities.where(category: "Pets")
			@pets_debit = bill_debit
			@pets_credit = bill_credit

			@rents = user.activities.where(category: "Rent/Mortgage")
			@rents_debit = bill_debit
			@rents_credit = bill_credit

			@vacations = user.activities.where(category: "Vacation")
			@vacations_debit = bill_debit
			@vacations_credit = bill_credit

			@vehicles = user.activities.where(category: "Vehicle")
			@vehicles_debit = bill_debit
			@vehicles_credit = bill_credit
		end
	end

	private

	def bill_debit
		user = current_user
		user.activities.where(expense_type: "Debit", category: "Bills").pluck(:amount).inject(:+)
	end

	def bill_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Bills").pluck(:amount).inject(:+)
	end

	def business_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Business").pluck(:amount).inject(:+)
	end

	def business_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Business").pluck(:amount).inject(:+)
	end

	def total_debit
		user = current_user
		user.activities.where(expense_type: "Debit").pluck(:amount).inject(:+)
	end

	def total_credit
		user = current_user
		user.activities.where(expense_type: "Credit").pluck(:amount).inject(:+)
	end
end
