class AddDefaultIsCorrectToAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column :answers, :is_correct, :boolean, :default => false
  end
end
