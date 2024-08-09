class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :costumes
  has_many :bookings_as_owner, through: :costumes, source: :bookings
  # Need the above for the owner to see his/her bookings

  # validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :encrypted_password, presence: true, length: { minimum: 6 }

  validates :name, presence: true
  # validates :description, presence: true, length: { minimum: 5 }
  # validates :phone, presence: true, length: { minimum: 10 }
end
