class CompostersController < ApplicationController

	def new
		@composter = Composter.new
	end
	def create
		@user = current_user
		@composter = Composter.new(composter_params)
		@composter.user_id = @user.id
		@composter.save
		redirect_to composters_url
	end
	def show
		 @composter = Composter.find(params[:id])
		@json = Composter.all.to_gmaps4rails

	end
def index
		# @composter = Composter.find(params[:id])
		@json = Composter.all.to_gmaps4rails
	end

def gmaps4rails_sidebar
  "<span class='foo'>#{address} </span>" 
end
     def gmaps4rails_title
      # add here whatever text you desire
      "#{title} HELLO"
    end
	  private

    def composter_params
      params.require(:composter).permit(:address)
    end

    
end
