module Passconf
  class Engine < ::Rails::Engine
    isolate_namespace Passconf
    initializer "passconf.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        puts "Extending #{self} with Passconf::Controller"
        include Passconf::ApplicationHelper
      end
    end
  end
end
