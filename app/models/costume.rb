class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photo
  # If there are going to be more than one photo for each costume,
  #  the above "photo" should be updated to "photos"
  # along with references in the view files should be updated accordingly


  validates :price, presence: true
  validates :character, presence: true
  validates :size, presence: true
  validates :description, presence: true, length: { minimum: 5 }
end
