class Message < ApplicationRecord
  belongs_to :created_by, class_name: "User", foreign_key: :created_by_id
  belongs_to :sent_to, class_name: "User", foreign_key: :sent_to_id
  belongs_to :booking
  validates :content, presence: true
 validates :content, length: { minimum: 2 }
end
