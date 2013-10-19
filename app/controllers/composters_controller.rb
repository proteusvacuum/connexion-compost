class CompostersController < ApplicationController

	def new
		@composter = Composter.new
	end
	def create
		@composter = Composter.new(composter_params)
		@composter.save
		redirect_to composter_url(@composter)
	end
	def show
		# @composter = Composter.find(params[:id])
		@json = Composter.all.to_gmaps4rails
	end

	  private

    def composter_params
      params.require(:composter).permit(:address)
    end
end
