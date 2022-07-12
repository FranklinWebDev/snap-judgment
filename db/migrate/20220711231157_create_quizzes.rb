class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :description
      t.integer :total_points

      t.timestamps
    end
  end
end
