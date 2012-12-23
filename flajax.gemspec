$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "flajax/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flajax"
  s.version     = Flajax::VERSION
  s.authors     = ["Alan Moran"]
  s.email       = ["bonzofenix@gmail.com"]
  s.homepage    = "https://github.com/bonzofenix/flajax"
  s.summary     = "Provides ajax flash messages for your rails app"
  s.description = <<-END
    Rails 3 engine that provides ajax flash messages for your rails app.
  END
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "jquery-rails"
  s.add_dependency "haml"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "capybara-webkit"
  s.add_development_dependency "sqlite3"
end
