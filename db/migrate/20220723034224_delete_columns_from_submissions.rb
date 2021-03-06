class DeleteColumnsFromSubmissions < ActiveRecord::Migration[7.0]
  def change
    
    remove_foreign_key :submissions, :quizzes, if_exists: true
    remove_foreign_key :submissions, :answers, if_exists: true
    # remove_foreign_key :submissions, :users, if_exists: true
  
    remove_reference :submissions, :quiz, foreign_key: false, index: false, if_exists: true
    remove_reference :submissions, :answer, foreign_key: false, index: false, if_exists: true
    # remove_reference :submissions, :user, foreign_key: false, index: false, if_exists: true
    add_reference :submissions, :result, foreign_key: true, index: true

    add_column :submissions, :answer, :string
    remove_column :submissions, :is_correct, :boolean, if_exists: true
  
  end
end
