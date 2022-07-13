class RemoveHintFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :hint, :string
    remove_column :questions, :option1, :string
    remove_column :questions, :option2, :string
    remove_column :questions, :option3, :string
    remove_column :questions, :option4, :string
    remove_column :questions, :answer, :integer
  end
end
