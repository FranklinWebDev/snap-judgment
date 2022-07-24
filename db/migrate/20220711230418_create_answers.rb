class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :answer_text
      t.boolean :is_correct
      t.decimal :points

      t.timestamps # created_at and updated_at
    end
  end
end
