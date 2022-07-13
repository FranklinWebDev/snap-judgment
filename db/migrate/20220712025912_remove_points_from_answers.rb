class RemovePointsFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :points, :decimal
  end
end
