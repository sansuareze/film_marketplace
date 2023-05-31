# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts "destroying all"

Equipment.destroy_all
User.destroy_all
Booking.destroy_all

puts "seeding users"

user1 = User.new(email: "sansuareze@gmail.com", password: "123456")
user2 = User.new(email: "hana@gmail.com", password: "123456")
user3 = User.new(email: "fitti@gmail.com", password: "123456")

puts "seeding equipment"

file1 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685457191/71EWRyqzw0L._AC_UF894_1000_QL80__s5og1g.jpg")
equipment1 = Equipment.new(daily_price: 100, title: "Camera", description: "Such a great one. Please rent it from me", category: "Camera", state: "New", user: user1)

equipment1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
equipment1.save


file2 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685456651/adnan-ghaffar-I8uQkcQCU8s-unsplash_beawfd.jpg")
equipment2 = Equipment.new(daily_price: 75, title: "Tripod", description: "You can use it to mount your camera", category: "Supports", state: "New", user: user1)

equipment2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
equipment2.save

file3 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685457256/Set-up__283391792777_29__28cropped_29_nwomxp.jpg")
equipment3 = Equipment.new(daily_price: 75, title: "Lighting Set", description: "You can use it to give light to your set", category: "Lighting", state: "Decayed", user: user2)

equipment3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
equipment3.save

file4 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685459153/Optotune_focus_tunable_lenses_-_new_group_image_-_2500px_fqvysj.jpg")
equipment4 = Equipment.new(daily_price: 125, title: "Camera Lenses", description: "You can use them to improve your camera's image quality", category: "Lenses", state: "New", user: user3)

equipment4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
equipment4.save

file5 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685459266/4651408_rd_ybthof.jpg")
equipment5 = Equipment.new(daily_price: 200, title: "Shotgun Microphone", description: "Best way to add sound to your film", category: "Sound", state: "Decayed", user: user3)

equipment5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
equipment5.save

file6 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685459397/Proaim-12ft-Carbon-Fiber-Boom-Pole-with-40cm-R-Blimp-Windscreen-1_700x700_dhoupd.jpg")
equipment6 = Equipment.new(daily_price: 200, title: "Boom Pole", description: "Good microphone to be able to add sound to your film", category: "Sound", state: "Used", user: user1)

equipment6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
equipment6.save
