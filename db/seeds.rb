
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

Booking.destroy_all
Costume.destroy_all
User.destroy_all

user = User.new(
      email:  "watanabe.r.e.i.z2929@gmail.com",
      password: "watanaberei51111",
      name: "rei watanabe",
      description: "I'm rei . hello!!!!!",
      phone: "08044418318"
    )


file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume = Costume.new(
    price: rand(100..7000),
    character: "Luffy",
    size: "M",
    description: "this is Luffy",
  )
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume2 = Costume.new(
    price: rand(100..7000),
    character: "Luffy",
    size: "M",
    description: "this is Luffy",
  )
  costume2.user = user
  costume2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume2.save



  file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume3 = Costume.new(
    price: rand(100..7000),
    character: "Luffy",
    size: "M",
    description: "this is Luffy",
  )
  costume3.user = user
  costume3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume3.save



  file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume4 = Costume.new(
    price: rand(100..7000),
    character: "Luffy",
    size: "M",
    description: "this is Luffy",
  )
  costume4.user = user
  costume4.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume4.save

  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Monkey_D._Luffy_cosplayer_%2823570810656%29.jpg/2560px-Monkey_D._Luffy_cosplayer_%2823570810656%29.jpg")
  costume5 = Costume.new(
    price: rand(100..7000),
    character: "Luffy",
    size: "M",
    description: "this is Luffy"
  )
  costume5.user = user
  costume5.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume5.save

  file = URI.open("https://img.ponparemall.net/imgmgr/77/00102677/itemimage20/69786.jpg?ver=1&size=pict650_650")
  costume6 = Costume.new(
    price: rand(100..7000),
    character: "Pikachu",
    size: "L",
    description: "Pikachu!!!!!"
  )
  costume6.user = user
  costume6.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume6.save


  file = URI.open("https://img.ponparemall.net/imgmgr/77/00102677/itemimage20/69786.jpg?ver=1&size=pict650_650")
  costume7 = Costume.new(
    price: rand(100..7000),
    character: "Pikachu",
    size: "L",
    description: "Pikachu!!!!!"
  )
  costume7.user = user
  costume7.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume7.save


  file = URI.open("https://img.ponparemall.net/imgmgr/77/00102677/itemimage20/69786.jpg?ver=1&size=pict650_650")
  costume8 = Costume.new(
    price: rand(100..7000),
    character: "Pikachu",
    size: "L",
    description: "Pikachu!!!!!"
  )
  costume8.user = user
  costume8.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume8.save


  file = URI.open("https://img.ponparemall.net/imgmgr/77/00102677/itemimage20/69786.jpg?ver=1&size=pict650_650")
  costume9 = Costume.new(
    price: rand(100..7000),
    character: "Pikachu",
    size: "L",
    description: "Pikachu!!!!!"
  )
  costume9.user = user
  costume9.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume9.save
