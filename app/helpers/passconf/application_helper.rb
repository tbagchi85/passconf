module Passconf
  module ApplicationHelper
    def check_password_status
      if current_user
        @req_controller = params[:controller]
        @password_status = current_user.send("password_status_#{@req_controller }") if current_user.respond_to?("password_status_#{@req_controller }")
        unless @password_status

          redirect_to root_path, notice: "You did not authorize password authentication."
        end
      end
    end

    def reset_password_status
      if current_user
        req_controller = params[:controller]
        user_columns = User.columns.collect(&:name).select{|i| i =~ /password_status_/}
        user_columns.each do |element|
          unless element == req_controller && current_user.send(element)
            current_user.update_attribute(element, false)
          end
        end
      end
    end
  end
end
