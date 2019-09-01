class Post < ApplicationRecord
  acts_as_paranoid
  belongs_to :user, optional: true
  #「optional:true」を追加しないとuser_idがnillの場合エラー => つまり、データベースにアクセスできないので、createとupdateアクションが使えない。

  validates :client_name,
    presence: true,
    length: { maximum: 30 }

  validates :email,
    presence: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    length: { maximum: 50 }

  validates :phone_number,
    format: { with: /\A\d{8,11}\z/ }

  validates :near_station,
    length: { maximum: 20 }

  validates :parking_address,
    presence: true,
    uniqueness: true,
    length: { maximum: 50 }

  validates :contract_company,
    length: { maximum: 20 }

  validates :cancellation_money,
    length: { maximum: 10 }

  validates :rent,
    length: { maximum: 10 }

  validates :parking_possible_number,
    length: { maximum: 10 }

  validates :parking_size,
    length: { maximum: 10 }

  validates :desired_rent,
    length: { maximum: 10 }

  validates :desired_rent,
    length: { maximum: 10 }

  validates :user_textarea,
    length: { maximum: 250 }
  scope :recent, -> { order(created_at: :desc) }

end
