# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts "destroying all"

Booking.destroy_all
Equipment.destroy_all
User.destroy_all

puts "seeding users"

user1 = User.new(email: "sansuareze@gmail.com", password: "123456")
user2 = User.new(email: "hana@gmail.com", password: "123456")
user3 = User.new(email: "fitti@gmail.com", password: "123456")

puts "seeding equipment"

file1 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685709427/GUEST_86a9c2be-9727-4296-9f58-91d85dde1e62_gdaqpv.jpg")
equipment1 = Equipment.new(daily_price: 100, title: "Canon XC-15 Cinema Camera", description: "Brand New Canon XC-15 Digital Cinema Camera (Lens Not Included)", category: "Camera", state: "New", user: user1, address: "Hochallee 42, 20149 Hamburg")

equipment1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
equipment1.save


file2 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685709453/C8686C9E-26B8-45A9-85BA-3EFBB357F383_1_201_a_ql8cms.jpg")
equipment2 = Equipment.new(daily_price: 75, title: "iFootage Cobra 2 A180-UII-TL", description: "Brand new in original box. Includes monopod and carrying case.", category: "Supports", state: "New", user: user1, address: "Heilwigstraße 71, 20249 Hamburg")

equipment2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
equipment2.save

file3 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685701048/61dGAa0BmTL._AC_UF894_1000_QL80__aklaru.jpg")
equipment3 = Equipment.new(daily_price: 75, title: "Arrilite 600 Set", description: "It comes with the original accessories: softbox, grid, and diffusion panels. This is a killer deal on a massive diffusion source.", category: "Lighting", state: "Decayed", user: user2, address:  "Heilwigstraße 71, 20249 Hamburg")

equipment3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
equipment3.save

file4 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685459153/Optotune_focus_tunable_lenses_-_new_group_image_-_2500px_fqvysj.jpg")
equipment4 = Equipment.new(daily_price: 125, title: "Nikon Nikkor Z 85mm f1.8 S Lens", description: "You can use them to improve your camera's image quality. Come with caps.", category: "Lenses", state: "New", user: user3, address: "Oberstraße 42, 20144 Hamburg")

equipment4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
equipment4.save

file5 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685701562/71e6pqfusqL_xqnfhm.jpg")
equipment5 = Equipment.new(daily_price: 200, title: "Rode Pro Shotgun Microphone", description: "Works great in the field as main or backup audio, live streaming, voiceovers, etc. 3.5mm Jack audio connection, shoe mount, battery operated, and -10db 0db +20db modes.", category: "Sound", state: "Decayed", user: user3, address: "Isestraße 3, 20144 Hamburg")

equipment5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
equipment5.save

file6 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685459397/Proaim-12ft-Carbon-Fiber-Boom-Pole-with-40cm-R-Blimp-Windscreen-1_700x700_dhoupd.jpg")
equipment6 = Equipment.new(daily_price: 200, title: "InnoGear MU-PSA28 Boom Pole", description: "Good microphone to be able to add sound to your film", category: "Sound", state: "Used", user: user1, address: "Isestraße 3, 20144 Hamburg")

equipment6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
equipment6.save

file7 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685697177/721ba2dd-0384-4e5f-8a31-5153295f34b5.50f7a1a9a66f55e5a046d7da0f9c94e6_q07tq8.jpg")
equipment7 = Equipment.new(daily_price: 85, title: "Autel Evo Pro 6k Rugged Bundle", description: "Drone with Camera and remote", category: "Camera", state: "New", user: user1, address: "Isestraße 40, 20144 Hamburg")

equipment7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
equipment7.save

file8 = URI.open("https://res.cloudinary.com/dqdghubdw/image/upload/v1685697386/o-767fe017-1643920615_ysg38e.jpg")
equipment8 = Equipment.new(daily_price: 50, title: "Priolite MBX500-HS Ultra Kit", description: "Comes with 2 heads, 2 HotSync Remotes (Canon), 4 Li-Ion batteries, 2 chargers, 4 reflectors and 2 speed rings", category: "Lighting", state: "Used", user: user1, address: "Isestraße 95, 20144 Hamburg")

equipment8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
equipment8.save
