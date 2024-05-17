class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photo

  validate :validate_photo
  # If there are going to be more than one photo for each costume,
  #  the above "photo" should be updated to "photos"
  # along with references in the view files should be updated accordingly


  validates :price, presence: true
  validates :character, presence: true
  validates :size, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  validates :character, :price, :size, :description, :genre, presence: true

  private

  def validate_photo
    if photo.count > 3
      errors.add(:photo, "You can only upload a maximum of 3 photos")
    end
  end
end
