class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :reviews

  # has_many :reviews
end

# changed line 4
