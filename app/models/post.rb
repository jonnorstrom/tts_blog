class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  # def user
  #   return User.find(self.user_id)
  # end
  #
  # def comments
  #   Comments.where(post_id: self.id)
  # end
end
