# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delayed_job_tracker/version'

Gem::Specification.new do |s|
  s.name          = "delayed_job_tracker"
  s.version       = DelayedJobTracker::VERSION

  s.authors       = ["Vladimir"]
  s.email         = ["vova@vova.me"]

  s.summary       = ""
  s.description   = ""

  s.homepage      = "https://github.com/slon1024/delayed_job_tracker"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency('delayed_job')
  
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "fuubar"
  s.add_development_dependency "simplecov"
end
