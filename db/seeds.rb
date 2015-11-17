# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

user_info = [
  {
    :first_name => "Jan",
    :last_name => "Smith",
    :email => "jan.smith@aoltest.com",
    # :password => "12341234,
  },
  {
    :first_name => "Teddy",
    :last_name => "Bear",
    :email => "teddybear@aoltest.com",
    # :password => "12341234,
  },
  {
    :first_name => "Tom",
    :last_name => "Woodworth",
    :email => "tbw1313@aoltest.com",
    # :password => "12341234,
  }
]


user_info.each do |user_hash|

  f = User.new
  f.first_name = user_hash[:first_name]
  f.last_name = user_hash[:last_name]
  f.email = user_hash[:email]
  # f.password = user_hash[:password]
  f.save
end

puts "There are now #{User.count} users in the database."

# ========================

Book.destroy_all

book_info = [
  {
    :book_title => "Vacation Memories",
    :title_page_image_url => "http://www.misskatecuttables.com/uploads/shopping_cart/9253/med_vacation-memories-title.png"
  },
   {
    :book_title => "Days to Remember",
    :title_page_image_url => "http://www.misskatecuttables.com/uploads/shopping_cart/9332/med_adaytoremembertitle.png"
  },
  {
    :book_title => "World Traveler",
    :title_page_image_url => "http://www.misskatecuttables.com/uploads/shopping_cart/9253/med_vacation-memories-title.png"
  }
]

book_info.each do |book_hash|
  random_num = rand(User.count)
  random_user = User.offset(random_num).first

  f = Book.new
  f.user_id = random_user
  f.book_title = book_hash[:book_title]
  f.title_page_image_url = book_hash[:title_page_image_url]
  f.save
end

puts "There are now #{Book.count} books in the database."

# ========================

Page.destroy_all

page_info = [
  {
    :page_image_url => "http://cdn5.howtogeek.com/wp-content/uploads/gg/up/sshot50c0c35861d32.jpg",
    :page_image_caption => "US Capital Building",
    :page_bullet_01 => "Visted when I was 10 years old.",
    :page_bullet_02 => "Washington DC Landmark"
  },
  {
    :page_image_url => "http://www.globusjourneys.com/Common/Images/Destinations/new-york-city1.jpg",
    :page_image_caption => "New York City",
    :page_bullet_01 => "My kind of town",
    :page_bullet_02 => "I love NYC"
  },
  {
    :page_image_url => "http://www.toursquebec.com/images/quebec_harbor.jpg",
    :page_image_caption => "My Summer House",
    :page_bullet_01 => "Quebec Harbor",
    :page_bullet_02 => "I love Canada"
  },
  {
    :page_image_url => "http://www.discovery-campervans.com.au/images/gallery/cairns.jpg",
    :page_image_caption => "Great Barrier Reef",
    :page_bullet_01 => "Visited on Honeymoon",
    :page_bullet_02 => "Loved the fish"
  },
  {
    :page_image_url => "https://d1hekt5vpuuw9b.cloudfront.net/assets/5e569962afa07be39bc451a14aa942f9_portland-maine-300x300_gallery.jpg",
    :page_image_caption => "Portland, Maine",
    :page_bullet_01 => "Spent time with family in 2007",
    :page_bullet_02 => "The lobster was fantastic"
  },
  {
    :page_image_url => "http://endlessfacts.com/upload/img/DHXMf14398883042.jpg",
    :page_image_caption => "Great Wall of China",
    :page_bullet_01 => "Grandaughter Amy visted last year",
    :page_bullet_02 => "Toured China for work"
  },
  {
    :page_image_url => "http://www.travelodestination.com/wp-content/uploads/2010/09/liverpool.jpg",
    :page_image_caption => "Liverpool, England",
    :page_bullet_01 => "30th Anniversary Trip",
    :page_bullet_02 => "Took kids to see England"
  },
  {
    :page_image_url => "https://d1hekt5vpuuw9b.cloudfront.net/assets/4ebc7a30f80b9974507465286dc5bb68_arches-national-parkutah-usa-300x300_gallery.jpg",
    :page_image_caption => "Arches National Park, Utah",
    :page_bullet_01 => "Summer Vacation 1995",
    :page_bullet_02 => "Took kids and spent 2 weeks"
  },
  {
    :page_image_url => "http://beachrove.com/wp-content/uploads/San-Francisco-travel-4.jpg",
    :page_image_caption => "San Francisco, CA",
    :page_bullet_01 => "Visit brother in San Fran",
    :page_bullet_02 => "He has 3 kids: Jon, Jill, and Sue"
  },
  {
    :page_image_url => "http://www.chicagodawgs.com/sites/default/files/home_page_slides/chicago_skyline_300.jpg",
    :page_image_caption => "Chicago",
    :page_bullet_01 => "Our home town",
    :page_bullet_02 => "Still waiting for the Cubs to win"
  },
  {
    :page_image_url => "http://img1.10bestmedia.com/Images/Photos/30912/field-museum-of-natural-history-chicago-il-usa-attractions-museums-museums-47765_57_300x300_201404181712.jpg",
    :page_image_caption => "Field Museum, Chicago",
    :page_bullet_01 => "One of our favorites",
    :page_bullet_02 => "Took kids and grnadkids"
  }
]

page_info.each do |page_hash|
  random_num = rand(User.count)
  random_user = User.offset(random_num).first

  random_num2 = rand(Book.count)
  random_book = Book.offset(random_num2).first

  p = Page.new

  p.page_image_url = page_hash[:page_image_url]
  p.page_image_caption = page_hash[:page_image_caption]
  p.page_bullet_01 = page_hash[:page_bullet_01]
  p.page_bullet_02 = page_hash[:page_bullet_02]
  p.user_id = random_user.id
  p.book_id = random_book.id
  p.save
end

puts "There are now #{Page.count} pages in the database."

