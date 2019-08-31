# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env =="development"
  (1..25).each do |i|
    Post.create(client_name: "テスト#{i}", email: "タイトル#{i}", parking_address: "東京都新宿区#{i}丁目")
  end
    User.create(name: "admin", email: "igpoid@gmail.com", password: "password", password_confirmation: "password", admin: true)
end