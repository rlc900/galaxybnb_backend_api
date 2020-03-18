class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :climate, :terrain, :images

  has_many :locations

  # def getReviews
  #   # byebug
  #   self.object.locations.map {|location| location.reviews}
  # end

end
