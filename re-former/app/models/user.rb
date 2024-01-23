class User < ApplicationRecord

  validates :username, :email, :password, presence: true, allow_blank: false

  validates :username, length: {in: 5..25}, uniqueness: true
  validates :email, length: {in: 5..40}, uniqueness: true
  validates :password, length: {in: 8..16}

end
