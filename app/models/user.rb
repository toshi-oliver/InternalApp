class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :nullify

  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 30 }

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    length: { maximum: 50 }

  validates :password,
    length: { minimum: 8 }

end
