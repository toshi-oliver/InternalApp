class Post < ApplicationRecord
  acts_as_paranoid
  belongs_to :user

  validates :client_name, presence: true
  validates :email, presence: true
  validates :parking_address, presence: true, uniqueness: true
  validates :parking_present, presence: true

  scope :recent, -> { order(created_at: :desc) }
end
