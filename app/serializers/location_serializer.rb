class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :reviews

  # has_many :reviews
end

# changed line 4
