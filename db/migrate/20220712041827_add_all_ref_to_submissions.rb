class AddAllRefToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_reference :submissions, :user, null: false, foreign_key: true
    add_reference :submissions, :quiz, null: false, foreign_key: true
    add_reference :submissions, :question, null: false, foreign_key: true
    add_reference :submissions, :answer, null: false, foreign_key: true
  end
end
