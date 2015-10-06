class MarketingContactsController < ApplicationController
  
  def create
    if is_email?
      MarketingContact.create(params[:marketing_contact])
      MarketingMailer.delay.email_capture(contact_email)
      render json: { notice: 'Thank you for your interest in HealthEngine!' }
    else
      render json: { notice: 'The email address you have entered is invalid!' }
    end
  end

  private
    def is_email?
      !!(contact_email =~ /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    end 

    def contact_email
      params[:marketing_contact][:contact_attributes][:email]
    end
end