class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
	@guest = Guest.new
  end

  def create
  	@guest = Guest.new(name: params[:name], occupation: params[:occupation])
  	@guest.episodes.push(Episode.find_or_create_by(params[:id]))
  	
  	if (@guest.save)
  		flash[:notice] = "Guest created Successfully."
  		redirect_to "/guests/#{@guest.id}"
  	else  
  		render :new
  	end

  end

   def show
  	@guest = Guest.find(params[:id])
   end

  private 

  	def guest_params
  		params.require(:guest).permit(:name, :occupation, :episodes)
  	end
end
