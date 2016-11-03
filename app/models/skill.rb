class Skill < ApplicationRecord
  belongs_to :category, dependent: :destroy
  belongs_to :user, :optional => true, dependent: :destroy
end
