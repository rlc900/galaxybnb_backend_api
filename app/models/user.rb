class User < ApplicationRecord
has_many :bookings, dependent: :destroy
has_many :booked_locations, through: :bookings, source: :location

has_many :reviews, dependent: :destroy
has_many :reviewed_locations, through: :reviews, source: :location

has_secure_password
validates :username, uniqueness: true
end
