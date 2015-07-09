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
			@clothing_debit = clothing_debit
			@clothing_credit = clothing_credit

			@foods = user.activities.where(category: "Food")
			@foods_debit = food_debit
			@foods_credit = food_credit

			@gases = user.activities.where(category: "Gas")
			@gases_debit = gas_debit
			@gases_credit = gas_credit

			@home = user.activities.where(category: "Home Repair")
			@home_debit = gas_debit
			@home_credit = gas_credit 

			@household_supplies = user.activities.where(category: "Household Supplies")
			@household_supplies_debit = supplies_debit
			@household_supplies_credit = supplies_credit

			@medicals = user.activities.where(category: "Medical")
			@medicals_debit = medical_debit
			@medicals_credit = medical_credit

			@personals = user.activities.where(category: "Personal")
			@personals_debit = personal_debit
			@personals_credit = personal_credit

			@pets = user.activities.where(category: "Pets")
			@pets_debit = pet_debit
			@pets_credit = pet_credit

			@rents = user.activities.where(category: "Rent/Mortgage")
			@rents_debit = rent_debit
			@rents_credit = rent_credit

			@vacations = user.activities.where(category: "Vacation")
			@vacations_debit = vacation_debit
			@vacations_credit = vacation_credit

			@vehicles = user.activities.where(category: "Vehicle")
			@vehicles_debit = vehicle_debit
			@vehicles_credit = vehicle_credit
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

	def clothing_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Clothing").pluck(:amount).inject(:+)
	end

	def clothing_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Clothing").pluck(:amount).inject(:+)
	end

	def food_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Food").pluck(:amount).inject(:+)
	end

	def food_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Food").pluck(:amount).inject(:+)
	end

	def gas_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Gas").pluck(:amount).inject(:+)
	end

	def gas_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Gas").pluck(:amount).inject(:+)
	end

	def home_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Home").pluck(:amount).inject(:+)
	end

	def home_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Home").pluck(:amount).inject(:+)
	end

	def supplies_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Household Supplies").pluck(:amount).inject(:+)
	end

	def supplies_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Household Supplies").pluck(:amount).inject(:+)
	end

	def medical_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Medical").pluck(:amount).inject(:+)
	end

	def medical_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Medical").pluck(:amount).inject(:+)
	end

	def personal_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Personal").pluck(:amount).inject(:+)
	end

	def personal_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Personal").pluck(:amount).inject(:+)
	end

	def pet_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Pets").pluck(:amount).inject(:+)
	end

	def pet_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Pets").pluck(:amount).inject(:+)
	end

	def rent_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Rent/Mortgage").pluck(:amount).inject(:+)
	end

	def rent_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Rent/Mortgage").pluck(:amount).inject(:+)
	end

	def vacation_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Vacation").pluck(:amount).inject(:+)
	end

	def vacation_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Vacation").pluck(:amount).inject(:+)
	end

	def vehicle_debit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Vehicle").pluck(:amount).inject(:+)
	end

	def vehicle_credit
		user = current_user
		user.activities.where(expense_type: "Credit", category: "Vehicle").pluck(:amount).inject(:+)
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
