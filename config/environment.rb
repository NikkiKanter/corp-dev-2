# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Sidekiq.default_worker_options= {"queue" => "corp"}
