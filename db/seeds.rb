require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

# Dress.destroy_all



file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1582645769/5lcbmqy0sl8sy8nfss5ok161me12.jpg')
file_one = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1582645769/5lcbmqy0sl8sy8nfss5ok161me12.jpg')


User.create email: "test@test.com", password: "123456"


dress_one = Dress.create(
  price: 2000,
  name: "MARCHESA NOTTE",
  category: "Party dress",
  size: "uk 6",
  )

dress_one.photo.attach(io: file, filename: "test.jpg" , content_type: 'image/png')

dress_two = Dress.create(
  price: 1000,
  name: "FLOUR FLAVOR",
  category: "Prom dress",
  size: "uk 8"
  )
dress_two.photo.attach(io: file, filename: "test.jpg" , content_type: 'image/png')

dress_three = Dress.create(
  price: 2000,
  name: "BCBG MAX AZRIA",
  category: "Wedding guest dress",
  size: "uk 10"
  )
dress_three.photo.attach(io: file, filename: "test.jpg" , content_type: 'image/png')

Review.create(
  content: "Very good quality",
  rating: "4"
  )


