require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Offer.destroy_all
Booking.destroy_all

User.create(email: 'valentin@gmail.com', password: 'mdpmdp', username: 'valentin')
User.create(email: 'jules@gmail.com', password: 'mdpmdp', username: 'jules')
User.create(email: 'yohan@gmail.com', password: 'mdpmdp', username: 'yohan')
User.create(email: 'madeleine@gmail.com', password: 'mdpmdp', username: 'madeleine')

file = URI.open("https://images.unsplash.com/photo-1542634093-e0198d4d1e46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
offer = Offer.create!(
  title: "Beer Spinner",
  description: "The perfect beer spinner for a night out. It can contain 30L of beer and 10 different beers are available for you to rent!",
  price: 150,
  date: "2020-08-17",
  category: "Drinks",
  user: User.all.sample
)
offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open("https://images.unsplash.com/photo-1505847705282-2c3a20717a69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
offer = Offer.create!(
  title: "Star Wars Costumes",
  description: "High quality Star Wars Costumes for all",
  price: 30,
  date: "2020-08-17",
  category: "Costumes",
  user: User.all.sample
)
offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open("https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
offer = Offer.create!(
  title: "Diamond Lights",
  description: "A very design and stylish neon to illuminate your parties",
  price: 20,
  date: "2020-08-17",
  category: "Lights",
  user: User.all.sample
)
offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open("https://images.unsplash.com/photo-1570629557357-45c6767e0140?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
offer = Offer.create!(
  title: "Mojitos",
  description: "The best mojito bartender for your events",
  price: 100,
  date: "2020-08-17",
  category: "Drinks",
  user: User.all.sample
)
offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open("https://images.unsplash.com/photo-1547584370-2cc98b8b8dc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80")
offer = Offer.create!(
  title: "Burgers Food Truck",
  description: "The most delicious burgers of your region to make your friends and family's belly happy",
  price: 150,
  date: "2020-08-17",
  category: "Food Trucks",
  user: User.all.sample
)
offer.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
