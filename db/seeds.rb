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
seventh_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582805705/black_dres_qqapba.jpg')
eighth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582805711/grey_dress_ctgcvw.jpg')
ninth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582805717/black_dress_dxe7yy.jpg')
tenth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582807355/pink_dress_x33ix8.jpg')
eleventh_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582807358/red_dress_tfnbag.jpg')
twelfth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582807393/gold_dress_mel434.jpg')
thirteen_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582808172/red_lace_dress_cybo54.jpg')
fourteenth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582808470/shocking_pink_kt9vsn.jpg')
fifteenth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582808487/grey_mmuzpo.jpg')
sixteenth_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582809757/green_y6fv2q.jpg')
seventeen_file = URI.open('https://res.cloudinary.com/dhhorrhuq/image/upload/v1582810579/dot_al9j64.jpg')

puts 'Deleting old data...'
Booking.destroy_all
Dress.destroy_all
User.create email: "test@test.com", password: "123456"
User.create email: "cat@test.com", password:"123"

puts 'Creating new dresses...'
first_dress = Dress.create(
  price: 12,
  name: "CHANEL Light Purple",
  category: "Prom dress",
  size: "UK 6",
  address: "16a, Little London, Milton Keynes, London"
  )
first_dress.photo.attach(io: file, filename: "anna-logacheva-jmc3Mi5exRk-unsplash_xm0vlo.jpg" , content_type: 'image/jpg')


second_dress = Dress.create(
  price: 30,
  name: "TOPSHOP Summer Dress",
  category: "Casual dress",
  size: "UK 6",
  address: "83 Upper St, London"
  )
second_dress.photo.attach(io: second_file, filename: "v1582676024/Screenshot_2020-02-25_at_23.48.00_ewuyng.png" , content_type: 'image/png')



third_dress = Dress.create(
  price: 65,
  name: "FLOUR FLAVOR PINK",
  category: "Party dress",
  size: "UK 10",
  address: "54 Islington Park St, London"
  )
third_dress.photo.attach(io: third_file, filename: "v1582650374/hyrjhefespsagw9z814gz0k8el06.jpg" , content_type: 'image/jpg')

fourth_dress = Dress.create(
  price: 90,
  name: "BCBG MAX Long dress",
  category: "Wedding guest dress",
  size: "UK 10",
  address: "60 Cross Street, London"
  )
fourth_dress.photo.attach(io: fourth_file, filename: "v1582676121/Screenshot_2020-02-25_at_23.54.11_zl8aps.png" , content_type: 'image/png')

fifth_dress = Dress.create(
  price: 120,
  name: "GUCCI Purple Dress ",
  category: "Prom dress",
  size: "UK 8",
  address: "Westgate House, 2a, Prebend St, London"
  )
fifth_dress.photo.attach(io: fifth_file, filename: "v1582676244/Screenshot_2020-02-25_at_23.53.43_lg3chd.png" , content_type: 'image/png')

sixth_dress = Dress.create(
  price: 85,
  name: "Prada Yellow Dress",
  category: "Prom dress",
  size: "UK 12",
  address: "98b St. Paul St, London"
  )
sixth_dress.photo.attach(io: sixth_file, filename: "honey-yanibel-minaya-cruz-sDYat0TWq0w-unsplash_vgdky6.jpg" , content_type: 'image/jpg')

seventh_dress = Dress.create(
  price: 75,
  name: "Black Mini Lace Dress",
  category: "Casual dress",
  size: "UK 6",
  address: "14 Dagmar Passage"
  )
seventh_dress.photo.attach(io: seventh_file, filename: "black_dres_qqapba.jpg" , content_type: 'image/jpg')

eighth_dress = Dress.create(
  price: 25,
  name: "Grey Dress with back details",
  category: "Casual dress",
  size: "UK 4",
  address: "54 Duncan Street, Shoreditch, LONDON"
  )
eighth_dress.photo.attach(io: eighth_file, filename: "grey_dress_ctgcvw.jpg" , content_type: 'image/jpg')

ninth_dress = Dress.create(
  price: 35,
  name: "Black Maxi Silk Dress",
  category: "Casual dress",
  size: "UK 2",
  address: "100 Upper St, London"
  )
ninth_dress.photo.attach(io: ninth_file, filename: "black_dress_dxe7yy.jpg" , content_type: 'image/jpg')

tenth_dress = Dress.create(
  price: 40,
  name: "Pink Chiffon Dress",
  category: "Wedding guest dress",
  size: "UK 8",
  address: "St. Marys Church, Upper St, London"
  )
tenth_dress.photo.attach(io: tenth_file, filename: "pink_dress_x33ix8.jpg" , content_type: 'image/jpg')

eleventh_dress = Dress.create(
  price: 40,
  name: "Red Maxi Dress with Ruffle Details",
  category: "Wedding guest dress",
  size: "UK 4",
  address: "7 Upper St, London"
  )
eleventh_dress.photo.attach(io: eleventh_file, filename: "red_dress_tfnbag.jpg" , content_type: 'image/jpg')

twelfth_dress = Dress.create(
  price: 60,
  name: "Gold Embroidered Party Dress",
  category: "Party dress",
  size: "UK 2",
  address: "207 Upper St, London"
  )
twelfth_dress.photo.attach(io: twelfth_file, filename: "gold_dress_mel434.jpg" , content_type: 'image/jpg')

thirteen_dress = Dress.create(
  price: 10,
  name: "Red Lace Maxi Dress",
  category: "Prom dress",
  size: "UK 8",
  address: "207 Upper Street, Islington, LONDON"
  )
thirteen_dress.photo.attach(io: thirteen_file, filename: "red_lace_dress_cybo54.jpg" , content_type: 'image/jpg')

fourteenth_dress = Dress.create(
  price: 40,
  name: "Pink Chiffon Dress",
  category: "Wedding guest dress",
  size: "UK 16",
  address: "1 Islington Green, London"
  )
fourteenth_dress.photo.attach(io: fourteenth_file, filename: "shocking_pink_kt9vsn.jpg" , content_type: 'image/jpg')

fifteenth_dress = Dress.create(
  price: 40,
  name: "Grey Button Detailed Mini dress",
  category: "Casual dress",
  size: "UK 4",
  address: "61 Richmond Avenue, London"
  )
fifteenth_dress.photo.attach(io: fifteenth_file, filename: "grey_mmuzpo.jpg" , content_type: 'image/jpg')

sixteenth_dress = Dress.create(
  price: 40,
  name: "Green Embellished Dress",
  category: "Party dress",
  size: "UK 6",
  address: "The Shopping Centre, 21, Parkfield St, London"
  )
sixteenth_dress.photo.attach(io: sixteenth_file, filename: "green_y6fv2q.jpg" , content_type: 'image/jpg')

seventeen_dress = Dress.create(
  price: 40,
  name: "Polka-Dot Off-the-Shoulder Dress",
  category: "Party dress",
  size: "UK 4",
  address: "Camden Passage, 33, Islington Green, London"
  )
seventeen_dress.photo.attach(io: seventeen_file, filename: "dot_al9j64.jpg" , content_type: 'image/jpg')




Review.create(
  content: "Very good quality",
  rating: "4"
  )

puts 'Seeding done'

