class EventsController < ApplicationController

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

private

  def event_params
    params.require(:event).permit(:title, :date, :time, :location, :age, :cost, :email, :name, :link, :genre)
  end

end
