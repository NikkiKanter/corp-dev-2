require 'sinatra/base'

class FakeEngine < Sinatra::Base
  get '/api/v1/providers/:id' do
    json_response 200, 'provider.json'
  end

  private

  def json_response(response_code, file_name)
    content_type :json
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end