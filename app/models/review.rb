class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :content, length: { minimum: 10 }
  validates :content, length: { maximum: 300 }
  validates :rating,  numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
