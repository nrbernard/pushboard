class EventMailer < ApplicationMailer

  def new_event(event)
    @event = event

    mail from: event.email
    mail to: "pushboardportland@gmail.com", subject: "New Event"
  end
end
