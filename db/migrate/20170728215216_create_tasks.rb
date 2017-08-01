class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :caregiver_id
      t.integer :plant_id
      t.string :name 
      t.string :description
      t.datetime :time 
      t.integer :price
      t.timestamps
    end
  end
end
