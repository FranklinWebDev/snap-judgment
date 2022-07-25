class ChangeScoreTypeOnResults < ActiveRecord::Migration[7.0]
  def change
        change_column :results, :score, :integer
  end
end
