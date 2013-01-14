module Spree
  class PagesController < BaseController
    def display
      @slug = "#{params[:slug]}-#{I18n.locale}"
    end
  end
end
