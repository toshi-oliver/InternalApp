class Post < ApplicationRecord
  acts_as_paranoid
  belongs_to :user, optional: true
  #「optional:true」を追加しないとuser_idがnillの場合エラー => つまり、データベースにアクセスできないので、createとupdateアクションが使えない。

  validates :client_name, presence: true
  validates :email, presence: true
  validates :parking_address, presence: true, uniqueness: true

  scope :recent, -> { order(created_at: :desc) }
end
