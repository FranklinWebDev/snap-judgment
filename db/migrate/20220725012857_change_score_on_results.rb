class ChangeScoreOnResults < ActiveRecord::Migration[7.0]
  def change
    change_column :results, :score, :decimal, :precision => 8, :scale => 2, :default => 0
  end
end
