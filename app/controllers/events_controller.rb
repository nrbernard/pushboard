class EventsController < ApplicationController
  http_basic_authenticate_with :name => ENV["AUTH_USER"], :password => ENV["AUTH_PASSWORD"], :only => :index

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Thanks for submitting your event! Feel free to submit another"
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    @event = Event.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to events_path }
      format.js
    end
  end

private

  def event_params
    params.require(:event).permit(:title, :date, :time, :location, :age, :cost, :email, :name, :link, :genre)
  end

end
