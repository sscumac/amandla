require "open-uri"

Review.destroy_all
Answer.destroy_all
Question.destroy_all
WishlistItem.destroy_all
Visit.destroy_all
Place.destroy_all
User.destroy_all



ilse = User.create!(
  email: "ilse@amandla.com",
  password: "password",
  first_name: "Ilse",
  last_name: "Rodriguez",
  about_me: "I am a lover of all things organic, raw, natural and 0km produced!"
)

sebastian = User.create!(
  email: "sebastian@amandla.com",
  password: "password",
  first_name: "Sebastian",
  last_name: "Schumacher",
  about_me: "I love all places that serve raw vegan food and raw vegan ice-cream!"
)

fair_tacos = Place.create!(
    address: "Torrent de la Olla 202, 08012 Barcelona",
    name: "Fair Tacos",
    category: "Restaurant",
    user: ilse,
    story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tincidunt augue, sit amet tincidunt nisl. Nunc ultrices, orci non ultrices vulputate, libero turpis facilisis ante, at ultricies ipsum nulla nec odio. Integer ut euismod libero. Maecenas augue lorem, varius tincidunt libero in, hendrerit vestibulum sapien. Nam volutpat urna ipsum, ut fermentum metus venenatis et. Sed ac lectus eget nisl consectetur vehicula at vel sapien. Donec et tortor sit amet turpis dictum iaculis vitae a nisi. Quisque risus risus, facilisis a vulputate non, facilisis non ipsum. Suspendisse aliquam metus vitae ante hendrerit varius. Vestibulum vitae urna sit amet mauris commodo finibus. Nulla cursus molestie mauris ut vehicula. Nunc eget erat nulla.",
    google_maps_url: "https://goo.gl/maps/4pmmFKCFF252nzMW9"
)
fair_tacos.tag_list.add("women owned", "vegetarian")

# image related
file = URI.open('https://themerrythought.com/wp-content/uploads/IMG_6615.jpg')
fair_tacos.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

fair_tacos.save!

hansel_and_granel = Place.create!(
    address: "Avinguda de la Riera de Cassoles, 08012 Barcelona",
    name: "Hansel & Granel",
    category: "Groceries",
    user: ilse,
    story: "I left behind 13 years of work in a non-profit foundation to set up Handsel y Granel a few months ago, an intimate and careful establishment that sells products in bulk.",
    google_maps_url: "https://goo.gl/maps/3Pirr9QFGQ4XTd6v7"
)
hansel_and_granel.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open('http://iaminthemoodforfood.com/wp-content/uploads/2015/06/hanselgranel.jpg')
hansel_and_granel.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

hansel_and_granel.save!

les_tres_gourmets = Place.create!(
    address: "Carrer de Casanova, 118, 08036, Barcelona",
    name: "Les Tres Gourmets",
    category: "Restaurant",
    user: ilse,
    story: "I left behind 13 years of work in a non-profit foundation to set up Les Tres Gourmets a few months ago, an intimate and careful establishment that sells meals made with love.",
    google_maps_url: "https://g.page/lestresgourmets?share"
)
les_tres_gourmets.tag_list.add("women owned", "organic", "vegetarian")

# image related
file = URI.open('https://images.squarespace-cdn.com/content/v1/5e297d214c22026b05a67e7a/1587387672989-1YBKIZRUAXKNZU8TWA2I/ke17ZwdGBToddI8pDm48kHTHJlACqy9PR67J39ATHOp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfZ1qQlCBU8D8HwMSx19XWWhZWoAraqJt_ybhixA0kzVDVfRxgAIsQ7eQiOnQS3C_Q/DSC06095_websize.jpg?format=2500w')
les_tres_gourmets.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

les_tres_gourmets.save!

kaoni_wellbeing = Place.create!(
    address: "Carrer de Saragossa, 39, 08006 Barcelona",
    name: "Kaoni Wellbeing",
    category: "Beauty and Wellness",
    user: ilse,
    story: "I left behind 13 years of work in a non-profit foundation to set up Kaoni Wellbeing a few months ago, an intimate and careful establishment that looks after your wellbeing.",
    google_maps_url: "https://goo.gl/maps/huwsN2qJQXkxGjRu6"
)
kaoni_wellbeing.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open("https://www.kaoni.es/wp-content/uploads/2019/04/AGA4384-1.jpg")
kaoni_wellbeing.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

kaoni_wellbeing.save!

woki_organic_market = Place.create!(
    address: "Carrer d'Astúries, 22, 08012 Barcelona",
    name: "Woki Organic Market",
    category: "Groceries",
    user: sebastian,
    story: "I left behind 13 years of work in a non-profit foundation to set up Woki a few months ago, an intimate and careful establishment that sells organic products.",
    google_maps_url: "https://goo.gl/maps/PrMY3WmjbzqppVRF7"
)
woki_organic_market.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://fastly.4sqi.net/img/general/200x200/3606159_qBMVs8784rwqgltbq_mU50vTQkE_U4W8S1XYMbStMsM.jpg')
woki_organic_market.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

woki_organic_market.save!


two_thirds = Place.create!(
    address: "Carrer del Monestir, 23, 08034 Barcelona",
    name: "Two Thirds",
    category: "Clothing and Fabrics",
    user: sebastian,
    story: "I left behind 13 years of work in a non-profit foundation to set up Two Thirds a few months ago, an intimate and careful establishment that sells amazing, sustainable clothing",
    google_maps_url: "https://g.page/TWOTHIRDS_BCN?share"
)
two_thirds.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://cdn.shopify.com/s/files/1/0995/5544/files/3_ebe0e568-2300-473f-af1d-d98b91d8f48a_1920x.jpg?v=1606807525')
two_thirds.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

two_thirds.save!

sukhi_rugs = Place.create!(
    address: "Carrer del Comte Borrell, 162, 08015",
    name: "Sukhi Rugs",
    category: "Clothing and Fabrics",
    user: ilse,
    story: "I left behind 13 years of work in a non-profit foundation to set up Rukhi a few months ago, an intimate and careful establishment that sells the best, sustainably-made rugs",
    google_maps_url: "https://goo.gl/maps/z7PjrNCp9bxiumCW7"
)
sukhi_rugs.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open('https://www.sukhi.es/pub/media/catalog/product/e/n/lited-braided-felt-asian-felt-ball-rugs.jpg')
sukhi_rugs.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

sukhi_rugs.save!

nomad_coffee_lab = Place.create!(
    address: "Passatge Sert, 12, 08003 Barcelona",
    name: "Nomad Coffee Lab",
    category: "Cafe",
    user: sebastian,
    story: "I left behind 13 years of work in a non-profit foundation to set up Nomad a few months ago, an intimate and careful establishment that makes incredible coffee, guilt-free",
    google_maps_url: "https://goo.gl/maps/7mYyrjSyERZHHcDq5"
)
nomad_coffee_lab.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://nomadcoffee.es/wp-content/uploads/2020/03/nomad_coffee_lab_shop_barcelona.jpg')
nomad_coffee_lab.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

nomad_coffee_lab.save!

restaurant_ohbo = Place.create!(
    address: "Carrer del Dr. Fleming, 15, 08017 Barcelona",
    name: "Restaurant Ohbo",
    category: "Restaurant",
    user: sebastian,
    story: "I left behind 13 years of work in a non-profit foundation to set up Ohbo a few months ago, an intimate and careful establishment that makes delicious organic food",
    google_maps_url: "https://g.page/restaurante-oh-bo?share"
)
restaurant_ohbo.tag_list.add("organic")

# image related
file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/f6/3b/92/ohbo-organic-cafe.jpg')
restaurant_ohbo.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

restaurant_ohbo.save!

the_magnificent = Place.create!(
    address: "Carrer de l'Argenteria, 64, 08003 Barcelona",
    name: "The Magnificent",
    category: "Cafe",
    user: ilse,
    story: "I left behind 13 years of work in a non-profit foundation to set up The Magnificent a few months ago, an intimate and careful establishment that makes lovely coffee",
    google_maps_url: "https://goo.gl/maps/ZoUCejpqTq2kd5kE8"
)
the_magnificent.tag_list.add("women owned","fair trade")

# image related
file = URI.open('https://cafeselmagnifico.com/wp-content/uploads/2020/09/el-magnifico-119-1280x1600.jpg')
the_magnificent.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

the_magnificent.save!


wishlist_item_1 = WishlistItem.create!(
  user: sebastian,
  place: fair_tacos
)

visit_1 = Visit.create!(
  user: sebastian,
  place: fair_tacos
)

question_1 = Question.create!(
  user: sebastian,
  place: fair_tacos,
  content: "Where do the Tacos come from?"
)

question_2 = Question.create!(
  user: sebastian,
  place: fair_tacos,
  content: "Where do babies come from?"
)

answer_1 = Answer.create!(
  user: ilse,
  question: question_1,
  content: "Mexico of course!"
)

review_1 = Review.create!(
  visit: visit_1,
  content: "This was amazing, ohmy God tacos be so good...!",
  rating: 5
)

puts "total users: #{User.count}"
puts "total places: #{Place.count}"
puts "total wishlist_items: #{WishlistItem.count}"
puts "total visits: #{Visit.count}"
puts "total questions: #{Question.count}"
puts "total answers: #{Answer.count}"
puts "total reviews: #{Review.count}"


# TODO: add tasks when the Gem is ready
# TODO: add associations
# TODO: add pictures
