class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :course_id
      t.boolean :admin
      t.string :session_questions
      t.datetime :confirmed_at
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
