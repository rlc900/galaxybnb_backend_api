class Type < ApplicationRecord
  has_many :locations
  has_many :planets, through: :locations
end
