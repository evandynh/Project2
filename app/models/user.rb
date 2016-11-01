class User < ApplicationRecord
  has_secure_password
  has_many :skills, dependent: :destroy
  has_many :categories, through: :skills
  accepts_nested_attributes_for :skills
end
