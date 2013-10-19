class WelcomeController < ApplicationController
	def index
		# @user = current_user
		# @composters = Composter.where({user_id: @user.id})
		@composters = Composter.all
		@json = Composter.all.to_gmaps4rails
	end
end
