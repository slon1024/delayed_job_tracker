require 'rails/generators/migration'
require 'rails/generators/active_record'


module DelayedJobTracker
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ::Rails::Generators::Migration

      source_root File.expand_path("../templates", __FILE__)

       def self.next_migration_number(dirname)
         next_migration_number = current_migration_number(dirname) + 1
         ::ActiveRecord::Migration.next_migration_number(next_migration_number)
       end

      desc "Added necessary column to delayed_jobs."
      def add_metadata_to_delayed_jobs
        migration_template "add_metadata_to_delayed_jobs.rb", "db/migrate/add_metadata_to_delayed_jobs.rb"
      end
    end
  end
end