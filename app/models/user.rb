class User < ApplicationRecord
  include BCrypt

  has_many :posts
  has_many :comments

  has_secure_password

  # def password
  #   @password ||= Password.new(password_digest)
  # end
  #
  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end
end
