# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

map "/favicon.ico" do
    run Rack::File.new("./images/favicon.ico")
end

run Rails.application
