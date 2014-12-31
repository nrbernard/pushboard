class SubscribersController < ApplicationController
  http_basic_authenticate_with :name => ENV["AUTH_USER"], :password => ENV["AUTH_PASSWORD"], :only => :index

  def index
    @subscribers = Subscriber.all
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:success] = "Thanks for subscribing!"
      redirect_to root_path
    else
      render "new"
    end
  end

private

  def subscriber_params
    params.require(:subscriber).permit(:email, :name)
  end

end
