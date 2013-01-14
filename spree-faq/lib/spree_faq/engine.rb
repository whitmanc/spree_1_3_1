module SpreeFaq
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_faq'
    require 'spree/core/controller_helpers/order'
    
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
    
    config.to_prepare &method(:activate).to_proc
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
