class SubscriberMailer < ActionMailer::Base

  def new_subscriber(subscriber)
    binding.pry
    @subscriber = subscriber

    mail from: subscriber.email
    mail to: "pushboardportland@gmail.com", subject: "New Subscriber"
  end

end
