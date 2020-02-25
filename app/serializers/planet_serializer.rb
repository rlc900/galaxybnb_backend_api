class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :climate, :terrain, :image

  has_many :locations
end
