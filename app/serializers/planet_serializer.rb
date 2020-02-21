class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :climate, :terrain, :image
end
