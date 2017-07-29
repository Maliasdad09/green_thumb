class User < ApplicationRecord
  has_many :plants
  has_many :tasks
end
