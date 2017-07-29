class Task < ApplicationRecord
  belongs_to :user
  belongs_to :caregiver
  has_many :plant_tasks
  has_many :plants, through: :plant_tasks
end
