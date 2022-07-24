class RemoveUsersTable < ActiveRecord::Migration[7.0]

  def up
    remove_column :results, :user_id, if_exists: true
    # remove_column :submissions, :user_id, if_exists: true


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

      add_column :results, :user_id, :integer
      add_column :submissions, :user_id, :integer
    end
end
