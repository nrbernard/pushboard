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
