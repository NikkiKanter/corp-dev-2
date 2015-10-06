class PagesController < ApplicationController
  def home
  end

  def physicians
  end

  def physicians
  end

  def about
  end

  def contact
  end

  def send_contact_info
    if ContactMailer.send_potential_lead(params).deliver
      flash[:notice] = "Email sent successfully"
      redirect_to root_path
    end
  end

  def consumer
  end

  def privacy
  end

  def terms
  end

  def user_agreement
  end

  def cdw
  end

  def cdw_brochure
  end
end
