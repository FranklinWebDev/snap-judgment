class AddTimeElapsedInQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :time_elapsed, :string
  end
end
