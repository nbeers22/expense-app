class HomeController < ApplicationController

	def index
		user = current_user
		@activities = user.activities
	end
end
