class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
		@composter = Composter.new
		@mycomposters = Composter.where({user_id: current_user.id})
	end
	def edit
		@user = User.find(params[:id])			
	end
	def update
	  @user = User.find(params[:id])
	 
	  if @user.update(params[:user].permit(:email, :postcode))
	    redirect_to @user
	  else
	    render 'edit'
	  end
	end
end
