class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.text :content
      t.string :answer
      t.integer :level_id
      t.integer :order

      t.timestamps
    end
  end
end
