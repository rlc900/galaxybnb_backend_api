class Location < ApplicationRecord
has_many :reviews
has_many :user_reviews, through: :reviews, source: :user

has_many :bookings
has_many :user_bookings, through: :bookings, source: :user

belongs_to :planets
belongs_to :types
end
