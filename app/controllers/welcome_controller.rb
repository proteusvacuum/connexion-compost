class WelcomeController < ApplicationController
	def index
		@user = current_user
		@composters = Composter.where({user_id: @user.id})
	end
end
