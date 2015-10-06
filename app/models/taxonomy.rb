class Taxonomy < ActiveResource::Base
  self.site = ENV['API_BASE']
end