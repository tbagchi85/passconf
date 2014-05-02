require 'rails/generators'
require 'rails/generators/migration'
module Passconf
  class MigrationsGenerator < Rails::Generators::Base
    argument :actions, :type => :hash, :default => {}, :banner => "action action"
    argument :column_names, :type => :array, :default => [], :banner => "action action"
    include Rails::Generators::Migration
    source_root File.expand_path('../../templates', __FILE__)

    def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end

    def create_model_file
      migration_template "add_password_status_columns.rb", "db/migrate/add_password_status_columns.rb"
    end
  end
end