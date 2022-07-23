class AddIsCorrectToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :is_correct, :boolean
  end
end
