class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_many :reviews

  validates :start_date, presence: true
  validates :end_date, presence: true
end
