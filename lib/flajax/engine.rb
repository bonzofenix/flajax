module Flajax
  class Engine < ::Rails::Engine
    isolate_namespace Flajax
    initializer 'myengine.app_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        include Flajax::FlajaxHelper
          after_filter :add_flajax
      end
    end
  end
end
