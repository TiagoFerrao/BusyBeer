class Booking < ApplicationRecord
  enum state: {pending: 0, accepted: 1, done: 2, rejected: 3 }

  belongs_to :job
  belongs_to :student, class_name: "User", foreign_key: "user_id"
end
