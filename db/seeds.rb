# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Dress.destroy_all


User.create email: "test@test.com", password: "123456"


Dress.create(
  price: 2000,
  name: "MARCHESA NOTTE",
  category: "evening dress",
  size: "uk 6"
  )
Dress.create(
  price: 1000,
  name: "FLOUR FLAVOR",
  category: "Prom dress",
  size: "uk 8"
  )
Dress.create(
  price: 2000,
  name: "BCBG MAX AZRIA",
  category: "Wedding guest dress",
  size: "uk 10"
  )

Review.create(
  content: "Very good quality",
  rating: "4"
  )
