class Subscriber < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /@/
  validates_presence_of :name
  validates_uniqueness_of :email

  after_create :send_subscriber_email

private

  def send_subscriber_email
    # SubscriberMailer.new_subscriber(self).deliver

    RestClient.post "https://api:#{ENV['MAILGUN_API_KEY']}@api.mailgun.net/v2/sandbox8996eb7a622440389f7706e641323fe9.mailgun.org/messages",
    :from => "#{email}",
    :to => "pushboardportland@gmail.com",
    :subject => "New Subscriber",
    :text => "Email: #{email}\nName: #{name}"
  end
end
