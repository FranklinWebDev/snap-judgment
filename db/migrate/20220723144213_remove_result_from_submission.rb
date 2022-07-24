class RemoveResultFromSubmission < ActiveRecord::Migration[7.0]
  def change
        remove_reference :submissions, :result, foreign_key: false, index: false
  end
end
