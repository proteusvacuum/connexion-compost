class WelcomeController < ApplicationController
	def index
		# @user = current_user
		@json = Composter.all.to_gmaps4rails
		# @composters = Composter.where({user_id: @user.id})
		@composters = Composter.all
		
	end
end
