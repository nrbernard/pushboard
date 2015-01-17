class NewslettersController < ApplicationController
  http_basic_authenticate_with :name => ENV["AUTH_USER"], :password => ENV["AUTH_PASSWORD"], :only => :index

  def index
    @newsletters = Newsletter.all
    @newsletter = Newsletter.new
    @events = Event.all
  end

private

  def newsletter_params
    params.require(:newsletter).permit(:start_date, :end_date, :events)
  end

end
