class Caregiver < ApplicationRecord
  has_many :plants, through: :tasks
  has_many :tasks
end
