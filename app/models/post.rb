class Post < ApplicationRecord
  acts_as_paranoid

  validates :client_name, presence: true
  validates :email, presence: true
  validates :parking_address, presence: true, uniqueness: true
  validates :parking_present, presence: true

end
