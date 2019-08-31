class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :nullify

  validates :name,
    presence: true,
    uniqueness: true
  validates :email,
    presence: true,
    uniqueness: true
  validates :password,
    length: { minimum: 8 }

end
