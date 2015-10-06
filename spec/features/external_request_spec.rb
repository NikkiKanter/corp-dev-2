require 'spec_helper'

feature 'External request' do
  it 'queries a Provider on Engine' do
    uri = URI("#{ENV['API_BASE']}/providers/1386649606")
    response = Net::HTTP.get(uri)
    expect(response).to be_an_instance_of String
  end
end