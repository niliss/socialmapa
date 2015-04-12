class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end
  def create
  	@event = Event.new(event_params)
  	@event.event_type = true
  	if @event.save
      # @event.locations.create(latitude: event_params[:locatable][:latitude], longitude: event_params[:locatable][:longitude])
  		redirect_to events_path
  	else
  		render 'new'
  	end
  end

  # def create_location(latitude, longitude)
  #   @event = Event.last
  #   # @location = Location.create(event_params)
  #   @event.locations.create(latitude: latitude, longitude: longitude)
  # end

  def show
    @event = Event.find(params[:id])
    @volunteers = @event.volunteers
  end
  def edit
  	@event = Event.find(params[:id])
  end

  def update
  	@event = Event.find(params[:id])
  	if @event.update(event_params)
  		redirect_to events_path
  	else
  		render 'edit'
  	end
  end
 	
 	def destroy
 		@event = Event.find(params[:id])
 		@event.destroy
 		redirect_to events_path
 	end

  private
  	def event_params
  		params.require(:event).permit(:name, :description, :initial_date, :end_date, :institution_id)
      # params.require(:event).permit(:name, :description, :initial_date, :end_date, :locatable)
  	end


end
