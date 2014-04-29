require 'rails/generators'

module Passconf
  class ViewsGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../..', __FILE__)
    def copy_files
      copy_file "app/views/passconf/password_confirmations/password_authentication.js.erb",  "app/views/passconf/password_confirmations/password_authentication.js.erb"
      copy_file "app/views/passconf/password_confirmations/password_dialog.js.erb",          "app/views/passconf/password_confirmations/password_dialog.js.erb"
      copy_file "app/views/layouts/passconf/_password_confirmation.html.erb", "app/views/layouts/passconf/_password_confirmation.html.erb"
      copy_file "app/views/layouts/passconf/_phr_section.html.erb", "app/views/layouts/passconf/_phr_section.html.erb"
    end
  end
end