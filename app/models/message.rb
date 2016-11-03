class Message < ApplicationRecord
  belongs_to :skill, optional: true
  belongs_to :to, class_name: 'User', dependent: :destroy
  belongs_to :from, class_name: 'User', dependent: :destroy
end
