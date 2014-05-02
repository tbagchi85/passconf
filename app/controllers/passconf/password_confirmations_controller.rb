require_dependency "passconf/application_controller"

module Passconf
  class PasswordConfirmationsController < ApplicationController
    skip_before_filter :reset_password_status

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
      field_name = "password_status_#{@current_controller_name}"
      if @status && !field_name.blank?
        current_user.update_attribute(field_name, true)  if current_user.respond_to?(field_name)
      end
      respond_to do |format|
        format.js
      end
    end
  end
end
