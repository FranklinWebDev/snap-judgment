class DeleteColumnsFromSubmissions < ActiveRecord::Migration[7.0]
  def change
    
    remove_foreign_key :submissions, :quizzes
    remove_foreign_key :submissions, :answers
    remove_foreign_key :submissions, :users 
  
    remove_reference :submissions, :quiz, foreign_key: false, index: false
    remove_reference :submissions, :answer, foreign_key: false, index: false
    remove_reference :submissions, :user, foreign_key: false, index: false
    add_reference :submissions, :result, foreign_key: true, index: true

    add_column :submissions, :answer, :string
    remove_column :submissions, :is_correct, :boolean
  
  end
end
