class Review < ApplicationRecord
  belongs_to :booking, dependent: :destroy
  validates :content, presence: true
  validates :content, length: { minimum: 20 }
  validates :content, length: { maximum: 300 }
end
