class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :quiz_title
      t.integer :no_ques

      t.timestamps
    end
  end
end
