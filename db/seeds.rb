
require "open-uri"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# User.destroy_all

# require 'faker'

# puts 'Creating 5 fake users...'
# 5.times do
#   user = User.new(
#     email:    Faker::Internet.email,
#     password: Faker::Internet.password(min_length: 10),
#     name: Faker::Name.name,
#     description: ,
#     phone: Faker::PhoneNumber.phone_number
#   )
#   user.save!
# end



# puts 'Finished!'

# imgs = [
#   "https://images.unsplash.com/flagged/photo-1563296412-742dfbae0afe?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29zcGxheXxlbnwwfHwwfHx8MA%3D%3D",
#   "https://images.unsplash.com/photo-1610524689143-88d4c6fa4789?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y29zcGxheXxlbnwwfHwwfHx8MA%3D%3D",
#   "https://images.unsplash.com/photo-1574955245353-db597db70666?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvc3BsYXl8ZW58MHx8MHx8fDA%3D",
#   "https://images.unsplash.com/photo-1577210944661-d982e8dae6e5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGNvc3BsYXl8ZW58MHx8MHx8fDA%3D",
#   "https://images.unsplash.com/photo-1630996406379-4a5b229545d1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGNvc3BsYXl8ZW58MHx8MHx8fDA%3D"
# ]

# puts 'Creating  fake users...'
# 10.times do |index|
#   user = User.new(
#     email: "#{index}@email.com",
#     password: "1234444444",
#     name: "",
#     description: "",
#     phone: ""
#   )
#   user.save!
#   file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
#   costume = Costume.new(
#     price: rand(100..7000),
#     character: "",
#     size: "",
#     description: "")
#   costume.user = user
#   costume.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   costume.save
# end
# imgs.each_with_index do |url, index|
#   user = User.new(
#         email: "#{index}@email.com",
#         password: "1234444444",
#         name: "",
#         description: "",
#         phone: ""
#       )
#       user.save!

#       file = URI.open(url)
#   costume = Costume.new(
#     price: rand(100..7000),
#     character: "",
#     size: "",
#     description: "")
#   costume.user = user
#   costume.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   costume.save

# end


# puts "#{User.count} users created"
# puts "#{Costume.count} costumes created"

# # User 1 with 3 costumes
# user = User.new(
#       email:  "",
#       password: "",
#       name: "",
#       description: "",
#       phone: ""
#     )

# file = URI.open("")
# costume = Costume.new(
#   price: ,
#   character: "",
#   size: "",
#   description: ",
# )

puts 'Cleaning the DB...'
Booking.destroy_all
Costume.destroy_all
User.destroy_all

puts "Creating users and costumes..."

# User 1 with 3 costumes
user = User.new(
  email:  "shiro@junkmail.com      ",
  password: "1111111111",
  name: "Shiro",
  description: "Baseball Umpire      ",
  phone: "1111111111")

  file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume = Costume.new(
    price: 3000,
    character: "Luffy      ",
    size: "M",
    description: "Dress like Luffy and become the King of Pirates!")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://cos.guide/upload/full/2022/07/FPNOli4agAIWkVj.jpg")
  costume = Costume.new(
    price: 4000,
    character: "Usopp",
    size: "L",
    description: "Dress like Usopp, the trickster of the Luffy crew!")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://i.pinimg.com/originals/7c/5f/67/7c5f672a84a8e8382ebef752388016c6.jpg")
  costume = Costume.new(
    price: 2000,
    character: "Pikachu",
    size: "L",
    description: "Used but good quality.")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

# User 2 with 2 costumes
user = User.new(
  email:  "elsi@junkmail.com",
  password: "2222222222",
  name: "Elsi",
  description: "Gate Agent",
  phone: "2222222222")

  file = URI.open("https://animeanime.jp/imgs/zoom/509912.jpg")
  costume = Costume.new(
    price: 4500,
    character: "Nami",
    size: "S",
    description: "Dress in a lovely costume and become Nami!")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://www.reddit.com/media?url=https%3A%2F%2Fi.redd.it%2F29rauzp1y49c1.jpeg")
  costume = Costume.new(
    price: 3000,
    character: "Inuyasha",
    size: "XL",
    description: "Newly arrived")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

# User 3 with 3 costumes
user = User.new(
  email:  "busta@junkmail.com",
  password: "3333333333",
  name: "Busta",
  description: "Supervising Fire Marshal",
  phone: "3333333333")

  file = URI.open("https://i.pinimg.com/originals/59/c5/72/59c5725e4140167c51c6a82d719606a2.jpg")
  costume = Costume.new(
    price: 2500,
    character: "Russell",
    size: "M",
    description: "Comes with badges and cap.")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://www.fm-anime.com/media/catalog/product/cache/d88a63ef4f53a0b30222f4d68ed8ec62/k/a/kausavich_kirenenko_2_-_.jpg")
  costume = Costume.new(
    price: 2000,
    character: "Kirenenko",
    size: "L",
    description: "A Russian rabbit convict with anger management issues")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.ezcosplay.com%2Fdragon-ball-son-goku-cosplay-costume.html&psig=AOvVaw1mmxFeMHeOppOlbaIwV6bv&ust=1715787462711000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMiN2NS8jYYDFQAAAAAdAAAAABAE")
  costume = Costume.new(
    price: 3500,
    character: "Son Goku",
    size: "M",
    description: "Orange outfit with wig")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

puts "Creating bookings..."

booking = Booking.new(
  user: User.find(2),
  costume: Costume.find(1),
  start_date: Date.today - 10,
  end_date: Date.today + 8,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.find(3),
  costume: Costume.find(2),
  start_date: Date.today - 9,
  end_date: Date.today + 7,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.find(1),
  costume: Costume.find(4),
  start_date: Date.today - 7,
  end_date: Date.today + 5,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.find(3),
  costume: Costume.find(5),
  start_date: Date.today - 6,
  end_date: Date.today + 4,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.find(1),
  costume: Costume.find(6),
  start_date: Date.today - 5,
  end_date: Date.today + 3,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.find(2),
  costume: Costume.find(7),
  start_date: Date.today - 4,
  end_date: Date.today + 2,
  status: "Requested")
  booking.save

puts "Finished seeding with #{User.count} users, #{Costume.count} costumes, and #{Booking.count} bookings"
