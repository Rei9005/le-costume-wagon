class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume

  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validates :status, presence: true
end
