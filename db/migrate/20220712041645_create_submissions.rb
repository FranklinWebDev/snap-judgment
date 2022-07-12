class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.boolean :is_correct

      t.timestamps
    end
  end
end
