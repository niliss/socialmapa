class VolunteersController < ApplicationController
	def new
		@volunteer = Volunteer.new
    @event = Event.find(params[:event_id])
	end

	def create
  	@volunteer = Volunteer.new(volunteer_params)
    @volunteer.event_id = Event.find(params[:event_id]).id

  	if @volunteer.save
  		redirect_to event_path(@volunteer.event_id)
  	else
  		render 'new'
  	end
  end

   private
  	def volunteer_params
  		params.require(:volunteer).permit(:name, :email)
  	end

end
