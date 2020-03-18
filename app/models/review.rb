class Review < ApplicationRecord
  belongs_to :user
  belongs_to :location

  def username
    review_user = self.user_id
    found_user = User.find_by(id: review_user)
    found_user.username
  end
end
