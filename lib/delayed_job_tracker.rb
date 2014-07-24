require 'delayed_job'
require "delayed_job_tracker/version"
require 'delayed_job_tracker/delayed/plugins/tracker'

Delayed::Worker.plugins << Delayed::Plugins::Tracker
module DelayedJobTracker
end