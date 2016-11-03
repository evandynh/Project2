class Category < ApplicationRecord
  has_many :skills, dependent: :destroy
  has_many :users, through: :skills
end
