class RemoveUsersTable < ActiveRecord::Migration[7.0]

  def up
    remove_reference :results, :user, foreign_key: false, index: false, if_exists: true
    remove_reference :submissions, :user, foreign_key: false, index: false, if_exists: true


    drop_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :course_id
      t.boolean :is_admin
      t.string :session_questions
      t.datetime :confirmed_at
      t.timestamps
    end

  end

    def down
      create_table :users do |t|
        t.string :email, null: false
        t.string :password_digest, null: false
        t.integer :course_id
        t.boolean :is_admin
        t.string :session_questions
        t.datetime :confirmed_at
        t.timestamps
      end

      add_index :users, :email, unique: true

      add_reference :results, :user, foreign_key: true, index: true
      add_reference :submissions, :user, foreign_key: true, index: true
    end
end
