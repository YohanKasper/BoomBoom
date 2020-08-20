class Review < ApplicationRecord
  belongs_to :booking, dependent: :destroy
  validates :content, presence: true
end
