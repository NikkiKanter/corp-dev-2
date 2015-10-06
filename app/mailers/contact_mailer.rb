class ContactMailer < ActionMailer::Base
  default to: "sales@healthengine.com"
  default from: "care@healthengine.com"

  def send_potential_lead(params)
    @params = params
    mail(
      subject: "Corporate contact form submission"
    )
  end

end
