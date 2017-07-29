class CreateCaregivers < ActiveRecord::Migration[5.1]
  def change
    create_table :caregivers do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :description
      t.timestamps
    end
  end
end
