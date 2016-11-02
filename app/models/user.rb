class User < ApplicationRecord
  has_secure_password
  has_many :skills, dependent: :destroy
  has_many :categories, through: :skills
  has_many :sent_messages, class_name: 'Message', :foreign_key => 'from_id', dependent: :destroy
  has_many :received_messages, class_name: 'Message', :foreign_key => 'to_id', dependent: :destroy
  accepts_nested_attributes_for :skills, allow_destroy: true, reject_if: :all_blank
  has_attached_file :image, styles: {
    small: "100x100",
    med: "200x200",
    large: "300x300"
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
