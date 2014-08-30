class AddMetadataToDelayedJobs < ActiveRecord::Migration
  def self.up
    add_column :delayed_jobs, :metadata, :text
  end

  def self.down
    remove_column :delayed_jobs, :metadata
  end
end