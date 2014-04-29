require_dependency "passconf/application_controller"

module Passconf
  class PasswordConfirmationsController < ApplicationController

    def password_dialog

      @current_controller_name = params[:controller_name]
      respond_to do |format|
        format.js
      end
    end

    def password_authentication
      decrypt_password = params[:user][:password]
      @status = current_user.valid_password?(decrypt_password)
      @link_name = params[:user][:link_name]
      @current_controller_name = params[:user][:controller_name]
      if @status
        if @link_name == "profile"
          current_user.update_attribute(:password_status_profile, true)
        elsif @link_name == "phr"
          current_user.update_attribute(:password_status_phr, true)
        end
        @pasword_auth_status = "true"
      else
        @pasword_auth_status = "false"
      end
      respond_to do |format|
        format.js
      end
    end
  end
end
