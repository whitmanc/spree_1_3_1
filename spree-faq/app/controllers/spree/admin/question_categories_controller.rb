module Spree
    module Admin
      class QuestionCategoriesController < ResourceController
        
        def new
          @question_category = @object
        end

        def edit
          @question_category = @object
        end    
      end
    end
  end