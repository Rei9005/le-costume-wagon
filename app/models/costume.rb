class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photo

  validates :price, presence: true
  validates :character, presence: true
  validates :size, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :character, :price, :size, :description, presence: true
end
