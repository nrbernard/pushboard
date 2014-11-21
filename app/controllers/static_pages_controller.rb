class StaticPagesController < ApplicationController

  def index
    @subscriber = Subscriber.new
  end

end
