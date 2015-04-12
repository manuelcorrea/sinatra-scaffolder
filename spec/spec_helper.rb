# make sure we have the correct gems to get off the ground
require 'rubygems'
require 'bundler'
require 'sinatra-scaffolder'

Bundler.require(:default, :test) if defined?(Bundler)

# set up the environment explicitly
ENV['RACK_ENV'] = 'test'

# code coverage
if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

