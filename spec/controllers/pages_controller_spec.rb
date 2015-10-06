require 'spec_helper'

describe PagesController do
  render_views

  describe "GET /" do
    it "renders  the home page" do
      get :home
      expect(response).to render_template "home"
    end
  end

  describe "GET /faq" do
    it "renders the faq page" do
      get :faq
      expect(response).to render_template "faq"
    end
  end

  describe "GET /concierge" do
    it "renders the concierge page" do
      get :concierge
      expect(response).to render_template "concierge" 
    end
  end

  describe "GET /terms" do
    it "renders the concierge page" do
      get :terms
      expect(response).to render_template "terms" 
    end
  end

  describe "GET /privacy" do
    it "renders the concierge page" do
      get :privacy
      expect(response).to render_template "privacy" 
    end
  end
end