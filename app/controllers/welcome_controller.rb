class WelcomeController < ApplicationController
	def index
		@user = current_user
		if @user.id? 
			@composters = Composter.where({user_id: @user.id})
		end
	end
end
