require 'rails/generators'

module Passconf
  class ControllersGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../..', __FILE__)
    def copy_files
      copy_file "app/controllers/passconf/password_confirmations_controller.rb",  "app/controllers/passconf/password_confirmations_controller.rb"
    end
  end
end