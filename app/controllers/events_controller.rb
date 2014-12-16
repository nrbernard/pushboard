class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to static_pages_path }
        format.js
      end
    end
  end

private

  def event_params
    params.require(:event).permit(:title, :date, :time, :location, :age, :cost, :email, :name, :link, :genre)
  end

end
