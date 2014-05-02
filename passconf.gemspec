$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "passconf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "passconf"
  s.version     = Passconf::VERSION
  s.author     = ["Tanmay Bagchi"]
  s.email       = ["tbagchi85@gmail.com"]
  s.homepage    = ""
  s.summary     = ""
  s.description = "This is a nice and simple full Rails Engine where use can authorize Password before continue to a Rails Controller action.

Basically In high secure web site like Banking or HealthCare domain before get enter into Rails Controller action

It will ask for password before continue.

The main function of that gem is in a link you need to specify a css class and controller name. When user will click the

link a Password Confirmation pop up appear and after validating your password only it will give you the access to that

respective controller action."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails", "~> 4.1.0"

  s.add_development_dependency "sqlite3"
end
