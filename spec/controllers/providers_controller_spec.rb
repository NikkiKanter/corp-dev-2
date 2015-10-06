require 'spec_helper'

describe ProvidersController do
  describe 'GET providers/:id' do
    it "renders the provider profile" do
      get :show, id: '1386649606'
      
      expect(assigns(:provider)).to be_a_instance_of Provider
      expect(response).to render_template "show"
    end
  end
end