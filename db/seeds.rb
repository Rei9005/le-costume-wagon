require "open-uri"

puts 'Cleaning the DB...'
Booking.destroy_all
Costume.destroy_all
User.destroy_all

puts "Creating users and costumes..."


# User 1 with 3 costumes
user = User.new(
  email:  "shiro@junkmail.com",
  password: "1111111111",
  name: "Shiro",
  description: "Baseball Umpire",
  phone: "1111111111")

  file = URI.open("https://cdn.worldcosplay.net/140447/lelbfsyyjxjhslptpcwubjcvkjjitwownypkskdp-740.jpg")
  costume = Costume.new(
    price: 3000,
    character: "Luffy",
    size: "M",
    description: "Dress like Luffy and become the King of Pirates!",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://cos.guide/upload/full/2022/07/FPNOli4agAIWkVj.jpg")
  costume = Costume.new(
    price: 4000,
    character: "Usopp",
    size: "L",
    description: "Dress like Usopp, the trickster of the Luffy crew!",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://i.pinimg.com/originals/7c/5f/67/7c5f672a84a8e8382ebef752388016c6.jpg")
  costume = Costume.new(
    price: 2000,
    character: "Pikachu",
    size: "L",
    description: "Used but good quality.",
    genre: "Japanese anime")
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
    description: "Dress in a lovely costume and become Nami!",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://www.procosplay.jp/cdn/shop/products/quan-ye-cha-inuyasha-kosuchumu-mp002405-nan-xingxs-414_2000x.jpg?v=1619151822")
  costume = Costume.new(
    price: 3000,
    character: "Inuyasha",
    size: "L",
    description: "Newly arrived",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

# User 3 with 19 costumes
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
    description: "Comes with badges and cap.",
    genre: "Pixar")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://www.fm-anime.com/media/catalog/product/cache/d88a63ef4f53a0b30222f4d68ed8ec62/k/a/kausavich_kirenenko_2_-_.jpg")
  costume = Costume.new(
    price: 2000,
    character: "Kirenenko",
    size: "L",
    description: "A Russian rabbit convict with anger management issues",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFAXK7n7t9iZ61uZQ72eoQnDc24gbun1m9rQ&s")
  costume = Costume.new(
    price: 3500,
    character: "Son Goku",
    size: "M",
    description: "Orange outfit with wig",
    genre: "Japanese anime")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://i.ebayimg.com/images/g/bNkAAOSwChRiqGzc/s-l1200.jpg")
  costume = Costume.new(price: 1500, character: "Luke Skywalker", size: "M", description: "A Jedi Knight from Tatooine", genre: "Star Wars")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save

  file = URI.open("https://i.ebayimg.com/images/g/vu4AAOSwDRNeluFU/s-l1600.jpg")
  costume = Costume.new(price: 2200, character: "Iron Man", size: "L", description: "A billionaire in a high-tech armor suit", genre: "Marvel")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save


  file = URI.open("https://target.scene7.com/is/image/Target/GUEST_5c40e15b-37a9-4d9c-854e-a20f4a9b7619?wid=488&hei=488&fmt=pjpeg")
  costume = Costume.new(price: 1300, character: "Pepperoni Pizza", size: "M", description: "A delicious slice of pizza", genre: "Food")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save


  file = URI.open("https://i.ebayimg.com/images/g/LsMAAOSw9-RdiRoI/s-l1200.webp")
  costume = Costume.new(price: 1900, character: "Dracula", size: "L", description: "A legendary vampire", genre: "Scary")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://images.halloweencostumes.com/products/87685/1-1/kids-purrfect-black-cat-costume.jpg")
  costume = Costume.new(price: 1200, character: "Cat", size: "S", description: "A cute furry feline", genre: "Pets")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://i2.wp.com/rainonatinroof.com/wp-content/uploads/2019/09/diy-witch-costume-womens.jpg")
  costume = Costume.new(price: 1450, character: "Witch", size: "L", description: "A sorceress with magical powers", genre: "Scary")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save


  file = URI.open("https://images.halloweencostumes.com/products/74616/2-1-178218/adult-dog-suit-with-mouth-mover-mask-alt-1.jpg")
  costume = Costume.new(price: 1250, character: "Dog", size: "M", description: "A loyal canine companion", genre: "Pets")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save


  file = URI.open("https://i.pinimg.com/736x/1b/66/51/1b665142292ac66219bd944635c495c1.jpg")
  costume = Costume.new(price: 1350, character: "Ghostbuster", size: "L", description: "A paranormal investigator", genre: "Movies")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://www.smiffys.com/cdn/shop/products/robin-hood-costume.jpg?v=1602862777")
  costume = Costume.new(price: 1650, character: "Robin Hood", size: "M", description: "An outlaw who robs from the rich", genre: "Movies")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://m.media-amazon.com/images/I/61kGLXw06JS._AC_UY1000_.jpg")
  costume = Costume.new(price: 1300, character: "Hot Dog", size: "L", description: "A popular snack", genre: "Food")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://spirit.scene7.com/is/image/Spirit/01484245-a?$fullsize1200$")
  costume = Costume.new(price: 1750, character: "Beetlejuice", size: "M", description: "A mischievous ghost", genre: "Scary")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save



  file = URI.open("https://images.halloweencostumes.ca/products/43505/1-1/adult-dc-wonder-woman-costume.jpg")
  costume = Costume.new(price: 1650, character: "Wonder Woman", size: "L", description: "An Amazonian princess", genre: "Superhero")
  costume.user = user
  costume.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  costume.save


puts "Creating bookings..."

booking = Booking.new(
  user: User.second,
  costume: Costume.first,
  start_date: Date.today - 10,
  end_date: Date.today + 8,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.third,
  costume: Costume.second,
  start_date: Date.today - 9,
  end_date: Date.today + 7,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.first,
  costume: Costume.fourth,
  start_date: Date.today - 7,
  end_date: Date.today + 5,
  status: "Requested")
  booking.save

  booking = Booking.new(
  user: User.third,
  costume: Costume.fifth,
  start_date: Date.today - 6,
  end_date: Date.today + 4,
  status: "Requested")
  booking.save


puts "Finished seeding with #{User.count} users, #{Costume.count} costumes, and #{Booking.count} bookings"
