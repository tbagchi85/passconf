class AddPasswordStatusColumns < ActiveRecord::Migration
  def change
<% table_name = actions["table_name"].blank? ? "users" : actions["table_name"]  %><% column_names.each do |attribute| -%>
    add_column :<%= table_name %>, :<%= "password_status_#{attribute}" %>, :boolean, :default => false
<% end %>
  end
end


