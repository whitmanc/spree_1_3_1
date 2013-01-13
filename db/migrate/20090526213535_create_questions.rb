class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :spree_questions do |t|
      t.integer :question_category_id
      t.text    :question
      t.text    :answer
      t.integer :position


      t.timestamps
    end
  end

  def self.down
    drop_table :spree_questions
  end
end
