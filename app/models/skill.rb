class Skill < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validate_presence_of :user
end
