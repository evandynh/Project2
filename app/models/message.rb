class Message < ApplicationRecord
  belongs_to :skill
  belongs_to :to, class_name: 'User'
  belongs_to :from, class_name: 'User'
end
