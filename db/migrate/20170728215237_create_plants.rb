class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
       t.integer :user_id
       t.string  :name
       t.string  :medium
       t.string  :type_of_fertilizer 
      t.timestamps
    end
  end
end
