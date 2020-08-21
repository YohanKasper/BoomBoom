class Offer < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates_length_of :description, minimum: 5, maximum: 85
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def booked?(user)
    self.bookings.find_by(user: user)
  end

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [:title, :description],
    using: {
      tsearch: { prefix: true }
    }
end
