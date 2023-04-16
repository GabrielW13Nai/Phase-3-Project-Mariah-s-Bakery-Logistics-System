

require_relative './config/environment'

# Allow Cross-Origin Resource Sharing
use Rack::Cors do
    allow do
        origins '*'
        resource '*', headers: :any, methods: [:get, :put, :patch, :post, :delete]
    end
end

# parse strings from request to JSON format
use Rack::JSONBodyParser

#this runs the application
run ApplicationController
