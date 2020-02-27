require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582658641/anna-logacheva-jmc3Mi5exRk-unsplash_xm0vlo.jpg')
second_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582676024/Screenshot_2020-02-25_at_23.48.00_ewuyng.png')
third_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582650374/hyrjhefespsagw9z814gz0k8el06.jpg')
fourth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582676121/Screenshot_2020-02-25_at_23.54.11_zl8aps.png')
fifth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582676244/Screenshot_2020-02-25_at_23.53.43_lg3chd.png')
sixth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582677315/honey-yanibel-minaya-cruz-sDYat0TWq0w-unsplash_vgdky6.jpg')


Dress.destroy_all
User.create email: "test@test.com", password: "123456"


first_dress = Dress.create(
  price: 12000,
  name: "CHANEL Light Purple",
  category: "Prom dress",
  size: "uk 6",
  )
first_dress.photo.attach(io: file, filename: "anna-logacheva-jmc3Mi5exRk-unsplash_xm0vlo.jpg" , content_type: 'image/jpg')


second_dress = Dress.create(
  price: 3000,
  name: "TOP SHOP Summer Dress",
  category: "Casual dress",
  size: "uk 6",
  )
second_dress.photo.attach(io: second_file, filename: "v1582676024/Screenshot_2020-02-25_at_23.48.00_ewuyng.png" , content_type: 'image/png')



third_dress = Dress.create(
  price: 6500,
  name: "FLOUR FLAVOR PINK",
  category: "Party dress",
  size: "uk 7"
  )
third_dress.photo.attach(io: third_file, filename: "v1582650374/hyrjhefespsagw9z814gz0k8el06.jpg" , content_type: 'image/jpg')

fourth_dress = Dress.create(
  price: 9000,
  name: "BCBG MAX Long dress",
  category: "Wedding guest dress",
  size: "uk 10"
  )
fourth_dress.photo.attach(io: fourth_file, filename: "v1582676121/Screenshot_2020-02-25_at_23.54.11_zl8aps.png" , content_type: 'image/png')

fifth_dress = Dress.create(
  price: 120000,
  name: "GUCCI Purple Dress ",
  category: "Prom dress",
  size: "uk 9"
  )
fifth_dress.photo.attach(io: fifth_file, filename: "v1582676244/Screenshot_2020-02-25_at_23.53.43_lg3chd.png" , content_type: 'image/png')

sixth_dress = Dress.create(
  price: 8500,
  name: "Prada Yellow Dress",
  category: "Prom dress",
  size: "uk 12"
  )
sixth_dress.photo.attach(io: sixth_file, filename: "honey-yanibel-minaya-cruz-sDYat0TWq0w-unsplash_vgdky6.jpg" , content_type: 'image/jpg')


Review.create(
  content: "Very good quality",
  rating: "4"
  )


