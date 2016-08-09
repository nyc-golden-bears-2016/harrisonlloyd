class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps null: false
    end
  end
end
