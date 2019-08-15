class User < ApplicationRecord
  has_secure_password

  validates :name,
    presense: true,
    uniqueness: true,
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
  validates :email, presense: true, uniqueness: ture
  validates :password,
    length: { minimum: 8 }
end
