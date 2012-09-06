class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :ques_title
      t.string :opt_1
      t.string :opt_2
      t.string :opt_3
      t.string :opt_4
      t.string :cor_opt

      t.timestamps
    end
  end
end
