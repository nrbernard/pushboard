class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :age, :inclusion => { :in => [true, false] }
  validates :cost, presence: true
  validates :email, presence: true
  validates :name, presence: true

  belongs_to :newsletter

  after_create :send_event_email

  default_scope { order('created_at') }

private

  def send_event_email
    if Rails.env.production?
      RestClient.post "https://api:#{ENV['MAILGUN_API_KEY']}@#{ENV['MAILGUN_API_BASE_URL']}/messages",
      :from => "#{email}",
      :to => "pushboardportland@gmail.com",
      :subject => "New Event",
      :text => "Date: #{date.strftime("%A, %B %e")}\n\n\n" +
               "Title: #{title}\n" +
               "Time: #{time.strftime("%l:%M %p")}\n" +
               "Location: #{location}\n" +
               "All Ages?: #{age ? 'Yes' : 'No'}\n" +
               "Cost: $#{cost}\n" +
               "Contact Email: #{email}\n" +
               "Contact Name: #{name}\n" +
               "Links: #{link}\n" +
               "Description: #{description}\n"
    else
      EventMailer.new_event(self).deliver
    end
  end

end
