class RemoveTotalPointsFromQuiz < ActiveRecord::Migration[7.0]
  def change
    remove_column :quizzes, :total_points, :integer
  end
end
