class Subscriber < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, :with => /@/
  validates_presence_of :name
  validates_uniqueness_of :email

  after_create :send_subscriber_email

  def send_subscriber_email
    SubscriberMailer.new_subscriber(self).deliver
  end
end
