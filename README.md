# Passconf

This is a nice and simple full Rails Engine where use can authorize Password before continue to a Rails Controller action.

Basically In high secure web site like Banking or HealthCare domain before get enter into Rails Controller action

It will ask for password before continue.

The main function of that gem is in a link you need to specify a css class and controller name. When user will click the

link a Password Confirmation pop up appear and after validating your password only it will give you the access to that

respective controller action.

In Usage, you can find proper example.

## Installation

Add this line to your application's Gemfile:

    gem 'passconf'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install passconf

## Usage

After Gem install

    rails g passconf:migrations [list of controllers]
    Example: rails g passconf:migrations blogs file_uploads

blogs and file_uploads is your controller name.

Then You need to run:

    rake db:migrate

You can generate the following files:-

     rails g passconf:assets
     rails g passconf:controllers
     rails g passconf:views


Go to your view file and add the link with css class and data-controller attributes:-

     <%= link_to 'New Blog', new_blog_path, class: 'passwordconfirmationDialog', data: {:link_name=>"blogs", :controller_name => 'blogs' } %>
Main part add css class as `passwordconfirmationDialog` and `:controller_name` => Controller Name which that link lead to.

Important thing you need to add `<%= javascript_include_tag 'passconf' %>` at the end of the View File.

Otherwise your javascript will not load and Pop-up will not come.

In `routes.rb` file

      mount Passconf::Engine => "/passconf", :as => "passconf_engine"

In `application_controller.rb` file

      before_filter :reset_password_status

In your controller file which need to Password Authenticated

Like in that example blogs_controller.rb and file_uploads_controller.rb file :-

       before_filter :check_password_status
       skip_before_filter :reset_password_status

All done.

Please let me know if you find any bugs in it.

In Future release I will work on Filtering, routes and callback. Best of luck.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
