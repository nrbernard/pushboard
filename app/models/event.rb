class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :age, presence: true
  validates :cost, presence: true
  validates :email, presence: true
  validates :email, format: { :with => /@/ }
  validates :name, presence: true

  after_create :send_event_email if Rails.env.production?

private

  def send_event_email
    RestClient.post "https://api:#{ENV['MAILGUN_API_KEY']}@api.mailgun.net/v2/sandbox8996eb7a622440389f7706e641323fe9.mailgun.org/messages",
    :from => "#{email}",
    :to => "pushboardportland@gmail.com",
    :subject => "New Subscriber",
    :text => "Email: #{email}\nName: #{name}"
  end
end
