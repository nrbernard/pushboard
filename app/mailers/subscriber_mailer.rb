class SubscriberMailer < ActionMailer::Base
  def new_subscriber(subscriber)
    @subscriber = subscriber

    mail from: subscriber.email
    mail to: "nrobertbernard@gmail.com", subject: "New Subscriber"
  end
end
