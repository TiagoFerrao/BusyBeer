class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  belongs_to :university, optional: true
  has_many :jobs, dependent: :destroy
  has_many :bookings
  has_many :reviews
  mount_uploader :photo, PhotoUploader
  has_many :reviews
  has_many :created_messages, class_name: "Message", foreign_key: :created_by_id
  has_many :received_messages, class_name: "Message", foreign_key: :sent_to_id
end
