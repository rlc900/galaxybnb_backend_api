class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :reviewed_location_id

  def reviewed_location_id
    self.object.location_id
  end
end
