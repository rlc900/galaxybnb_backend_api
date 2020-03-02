class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image

  has_many :reviews
end

# changed line 4
