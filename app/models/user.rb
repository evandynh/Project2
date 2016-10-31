class User < ApplicationRecord
  has_secure_password
  has_many :skills
  has_many :categories, through: :skills
  accepts_nested_attributes_for :skills
end
