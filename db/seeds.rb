# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env =="development"
  #(1..25).each do |i|
    ##Post.create(client_name: "テスト#{i}", email: "タイトル#{i}", parking_address: "東京都新宿区#{i}丁目")
  #Post.create(client_name: "toshiaki", email: "igpoid@gmail.com", phone_number: "090-4938-9103", near_station: "江古田", parking_address: "東京都新宿区高田馬場")
  #end
  User.create(name: "admin", email: "igpoid@ontech.tokyo", password: "password", password_confirmation: "password", admin: true)
  User.create(name: "古川", email: "furukawa@ontech.tokyo", password: "furukawa0626", password_confirmation: "furukawa0626", admin: false)
  User.create(name: "中津", email: "nakatsu@ontech.tokyo", password: "nakatsu0626", password_confirmation: "nakatsu0626", admin: false)
  User.create(name: "渡辺", email: "watanabe@ontech.tokyo", password: "watanabe0626", password_confirmation: "watanabe0626", admin: false)
  User.create(name: "根間", email: "nema@ontech.tokyo", password: "nema0626", password_confirmation: "nema0626", admin: false)
  User.create(name: "堀上", email: "horikami@ontech.tokyo", password: "horikami0626", password_confirmation: "horikami0626", admin: false)
end