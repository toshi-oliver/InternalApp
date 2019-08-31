class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :nullify

  validates :name,
    uniqueness: true
  validates :email,
    uniqueness: true
  validates :password,
    length: { minimum: 8 }

end
