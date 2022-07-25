class AddResultToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :submissions, :result, null: false, foreign_key: true
  end
end
