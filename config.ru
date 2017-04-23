# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

#Enable for wwwhisper https://devcenter.heroku.com/articles/wwwhisper
#require 'rack/wwwhisper'
#use Rack::WWWhisper
