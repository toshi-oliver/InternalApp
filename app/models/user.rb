class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :name,
    presence: true,
    uniqueness: true,
    format: { with: /\A[a-z0-9]+\z/, message: 'は小文字英数字で入力してください' }
  validates :email, presence: true, uniqueness: true
  validates :password,
    length: { minimum: 8 }
    
end
