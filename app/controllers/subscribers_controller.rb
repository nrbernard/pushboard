class SubscribersController < ApplicationController

  def index
    @subscribers = Subscriber.all
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to static_pages_path, :notice => "Thanks for subscribing!"
    else
      render "new"
    end
  end


private

  def subscriber_params
    params.require(:subscriber).permit(:email, :name)
  end

end
