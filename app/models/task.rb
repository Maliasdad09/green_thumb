class Task < ApplicationRecord
  belongs_to :plant
  validates :plant_id, presence: true, null: false
end
