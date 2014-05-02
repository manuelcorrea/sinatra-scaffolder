if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

require 'sinatra-scaffolder'

ENV['environment'] = 'test'
