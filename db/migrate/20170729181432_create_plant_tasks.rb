class CreatePlantTasks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :plant, :tasks do |t|
      t.integer :plant_id
      t.integer :task_id
      t.timestamps
    end
  end
end
