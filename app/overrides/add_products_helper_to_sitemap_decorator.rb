[Spree::SitemapController].each do |klass|
    klass.class_eval do
      helper 'spree/products'
      helper 'spree/analytics'

      include Spree::Core::ControllerHelpers::Order
    end
 end