class Job < ApplicationRecord
  belongs_to :client, class_name: "User", foreign_key: "user_id"

  belongs_to :category
  has_many :bookings

  has_many :students, through: :bookings

  validates :title, :category, :price, :duration, :address, :time, :description, presence: true
  validates :description, length: {minimum: 25}, allow_blank: false


  include PgSearch
  pg_search_scope :search_by_title_description,
       against: [ :title, :address],
       using: {
         tsearch: { prefix: true }
         }

  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?
end
