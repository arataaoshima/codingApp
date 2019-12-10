class AddAnswerHelpToQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :answer_help, :string
  end
end
