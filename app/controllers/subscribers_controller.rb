class SubscribersController < ApplicationController

  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      respond_to do |format|
        format.html { redirect_to static_pages_path }
        format.js
      end
    end
  end

private

  def subscriber_params
    params.require(:subscriber).permit(:email, :name)
  end

end
