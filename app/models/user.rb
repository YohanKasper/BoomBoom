class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true, presence: true
  validates :username, uniqueness: true, presence: true
  has_many :offers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :avatar
end
