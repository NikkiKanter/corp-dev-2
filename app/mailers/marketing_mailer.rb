class MarketingMailer < ActionMailer::Base
  default from: "HealthEngine<support@healthengine.com>",
          bcc: ENV["GMAIL_USER"]

  def email_capture(email)
    mail(
      to: email, 
      subject: "Thank you for your interest in HealthEngine!"
    )
  end
end
