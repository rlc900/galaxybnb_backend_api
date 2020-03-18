class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :reviewed_location_id, :username

  def reviewed_location_id
    # byebug
    self.object.location_id
  end

  def username
    self.object.user.username
  end
end
