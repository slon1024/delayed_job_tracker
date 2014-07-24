module Delayed
  module Plugins
    class Tracker < Plugin
      @@tracker_callbacks = {}

      callbacks do |lifecycle|
        lifecycle.before(:perform) {|worker, job| run_callback(:before_perform, worker, job) }
        lifecycle.after(:perform) {|worker, job| run_callback(:after_perform, worker, job) }
      end

      def self.before_perform(&block)
        self.register_callback(:before_perform, &block)
      end

      def self.after_perform(&block)
        self.register_callback(:after_perform, &block)
      end

      def self.run_callback(name, worker, job)
        if block = @@tracker_callbacks[name]
          block.call(worker, job)
        end
      end

      def self.register_callback(name, &block)
        @@tracker_callbacks[name] = block
      end
    end
  end
end


