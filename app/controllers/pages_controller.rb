class PagesController < ApplicationController
  
  # this needs to be added to the controller for Ajax to work
  respond_to :html, :json
  def index
    puts "start event"
    p "I am params #{params}"
    @events = Event.near([params[:lat], params[:lng]], 20, :units => :km)
    p @events.each do |event| event.lattitude end

    p @events.as_json(:only => [:latitude, :longitude])
    respond_to do |format|
      format.json {render :json => @events.as_json(:only => [:name, :latitude, :longitude])}
      format.html

    end

  end

  # def show
  # end

  # def create
  # end

  # def edit
  # end

  # def new
  # end

  # def destroy
  # end

  # def update
  # end
end
