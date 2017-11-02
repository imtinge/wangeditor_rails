$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wangeditor_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wangeditor_rails"
  s.version     = WangeditorRails::VERSION
  s.authors     = ["Tian Ting"]
  s.email       = ["imtinge@163.com"]
  s.homepage    = "https://github.com/imtinge/wangeditor_rails"
  s.summary     = "wangEditor for Rails."
  s.description = "Add wangEditor V3 edition, and customize input components for form & SimpleForm."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "simple_form"
end
