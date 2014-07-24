# DelayedJobTracker
Allows you to track a delayed job.

## Installation

Add this line to your application's Gemfile:

    gem 'delayed_job_tracker'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install delayed_job_tracker

## Usage

    Delayed::Plugins::Tracker.before_invoke_job do |job|
        # start tracking
    end

    Delayed::Plugins::Tracker.after_invoke_job do |job|
        # finish tracking
    end

## Contributing

1. Fork it ( http://github.com/<my-github-username>/delayed_job_tracker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
