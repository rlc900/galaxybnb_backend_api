class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price

  has_many :reviews
  # def username
  #   self.object.reviews.map {|review| review.user.username}
  # end
end

# changed line 4
