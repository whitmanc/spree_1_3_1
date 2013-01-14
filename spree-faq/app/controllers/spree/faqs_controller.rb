class Spree::FaqsController < Spree::BaseController
  helper 'spree/products'
  include Spree::Core::ControllerHelpers::Order

  def index
    @categories = Spree::QuestionCategory.all(:include => :questions)
  end

  def default_title
    I18n.t 'frequently_asked_questions'
  end
end
