class Planet < ApplicationRecord
    has_many :locations
    has_many :types, through: :locations
end
