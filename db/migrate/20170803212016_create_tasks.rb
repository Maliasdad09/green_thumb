class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :plant, foreign_key: true
      t.string "name"
      t.string "description"
      t.datetime "time"
      t.integer "price"
      t.datetime "updated_at", null: false
      t.timestamps
    end
  end
end
