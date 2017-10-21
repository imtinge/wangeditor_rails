require "wangeditor_rails"
require "rails"

module WangeditorRails
  class Engine < Rails::Engine

    initializer "wangeditor_rails.helper_and_builder" do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send(:include, WangeditorRails::Helper)
        ActionView::Helpers::FormBuilder.send(:include, WangeditorRails::Builder)
      end
    end

    initializer "wangeditor_rails.simple_form" do
      require "wangeditor_rails/simple_form" if Object.const_defined?("SimpleForm")
    end
  end
end
