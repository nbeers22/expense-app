class UsersController < ApplicationController
	def show
		user = current_user
		@debits = total_debit
		@credits = total_credit
		@july_2015 = user.activities.where(created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day)
		@july_2015_debit = july_debit
		@july_2015_credit = july_credit
		
		@aug_2015 = user.activities.where(created_at: Date.parse("2015-8-1").beginning_of_day..Date.parse("2015-8-31").end_of_day)
		@aug_2015_debit = aug_debit
		@aug_2015_credit = aug_credit

		@sept_2015 = user.activities.where(created_at: Date.parse("2015-9-1").beginning_of_day..Date.parse("2015-9-30").end_of_day)
		@sept_2015_debit = sept_debit
		@sept_2015_credit = sept_credit

		@oct_2015 = user.activities.where(created_at: Date.parse("2015-10-1").beginning_of_day..Date.parse("2015-10-31").end_of_day)
		@oct_2015_debit = oct_debit
		@oct_2015_credit = oct_credit

		@nov_2015 = user.activities.where(created_at: Date.parse("2015-11-1").beginning_of_day..Date.parse("2015-11-30").end_of_day)
		@nov_2015_debit = nov_debit
		@nov_2015_credit = nov_credit

		@dec_2015 = user.activities.where(created_at: Date.parse("2015-12-1").beginning_of_day..Date.parse("2015-12-31").end_of_day)
		@dec_2015_debit = dec_debit
		@dec_2015_credit = dec_credit
	end

	private

	def july_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def july_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def aug_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def aug_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def sept_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def sept_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def oct_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def oct_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def nov_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def nov_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def dec_debit
		user = current_user
		user.activities.where(expense_type: "Debit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
	end

	def dec_credit
		user = current_user
		user.activities.where(expense_type: "Credit", created_at: Date.parse("2015-7-1").beginning_of_day..Date.parse("2015-7-31").end_of_day).pluck(:amount).inject(:+)
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
