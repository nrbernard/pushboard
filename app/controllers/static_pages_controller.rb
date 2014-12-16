class StaticPagesController < ApplicationController

  def index
    @subscriber = Subscriber.new
    @event = Event.new
  end

end
