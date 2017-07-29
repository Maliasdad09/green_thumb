class Plant < ApplicationRecord
  belongs_to :user
  has_many :plant_tasks
  has_many :tasks, through: :plant_tasks
end
