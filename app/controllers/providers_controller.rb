class ProvidersController < ApplicationController
  layout :resolve_layout
  after_action :allow_iframe

  def show
    @provider = Provider.find(params[:id])
    @office_hours = Services::Provider::OfficeHoursPresenter.call(@provider.office_hours)
  end

  private

    def resolve_layout
      if params[:embeded] == 'true'
        'providers/embeded'
      else
        'providers/provider'
      end
    end

    def allow_iframe
      response.headers["X-FRAME-OPTIONS"] =  "ALLOW-FROM #{ENV['SEARCH_BASE']}" 
    end
end