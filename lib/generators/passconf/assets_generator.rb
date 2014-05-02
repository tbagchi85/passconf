require 'rails/generators'

module Passconf
  class AssetsGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../..', __FILE__)
    def copy_files
      copy_file "app/assets/javascripts/passconf/password_template.js",  "app/assets/javascripts/passconf/password_template.js"
      copy_file "app/assets/stylesheets/passconf/index.css",             "app/assets/stylesheets/passconf/index.css"
    end
  end
end