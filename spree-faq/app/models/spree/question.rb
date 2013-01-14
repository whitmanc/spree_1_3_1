class Spree::Question < ActiveRecord::Base
  acts_as_list 

  belongs_to :question_category
  
  validates_presence_of :question_category_id, :question, :answer

  attr_accessible :question_id, :question, :answer
end
