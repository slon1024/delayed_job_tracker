require "rspec"
require 'delayed_job'
require 'delayed_job_tracker'

require 'simplecov'
SimpleCov.start do
  add_filter '/spec'
end

Dir[File.expand_path('../../spec/support/**/*.rb', __FILE__)].each {|f| require f}

# Use test backend
Delayed::Worker.backend = :test

RSpec.configure do |config|
  config.order = 'random'
end


