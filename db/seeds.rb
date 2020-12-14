require "open-uri"

Review.destroy_all
Answer.destroy_all
Question.destroy_all
WishlistItem.destroy_all
Visit.destroy_all
Place.destroy_all
User.destroy_all


#review/question askers
Renan = User.create!(
  email: "renan@amandla.com",
  password: "password",
  first_name: "Renan",
  last_name: "Alvez",
  about_me: "Brazillian living in BCN"
)

Ana = User.create!(
  email: "ana@amandla.com",
  password: "password",
  first_name: "Ana",
  last_name: "Bajo",
  about_me: "Violinist, conscious consumer"
)

Leonardo = User.create!(
  email: "leo@amandla.com",
  password: "password",
  first_name: "Leo",
  last_name: "Cur",
  about_me: "Digital marketing master!"
)

Jaume = User.create!(
  email: "jaume@amandla.com",
  password: "password",
  first_name: "Jaume",
  last_name: "Ros Salvador",
  about_me: "ladies and loving. That's me"
)

Louis = User.create!(
  email: "louis@amandla.com",
  password: "password",
  first_name: "Louis",
  last_name: "Duquesne",
  about_me: "If I dont win you over with my charm and moves, I'll win you over with my cooking"
)
#business owner users
Dani = User.create!(
  email: "dani@amandla.com",
  password: "password",
  first_name: "Dani",
  last_name: "Domingo",
  about_me: "Proud vegetarian taco maker, trying to lighten my load on the planet"
)

Clau = User.create!(
  email: "clau@amandla.com",
  password: "password",
  first_name: "Clau",
  last_name: "Cherigny",
  about_me: "lover of all things real, natural and organic"
)

Blanca = User.create!(
  email: "blanca@amandla.com",
  password: "password",
  first_name: "Blanca",
  last_name: "Puges",
  about_me: "Holistic nutritionist, I believe food is the only medicine we need"
)

Vanessa = User.create!(
  email: "vanessa@amandla.com",
  password: "password",
  first_name: "Vanessa",
  last_name: "Diaz",
  about_me: "There needs to be way more harmony between the beauty industry and nature. We hope to lead this charge"
)

Marc = User.create!(
  email: "marc@amandla.com",
  password: "password",
  first_name: "Marc",
  last_name: "Santi",
  about_me: "A strong desire to have a greater connection to, and awareness of, our food and the processes involved"
)

Lutz = User.create!(
  email: "lutz@amandla.com",
  password: "password",
  first_name: "Lutz",
  last_name: "Schwenke",
  about_me: "A passion for the ocean and environmental activism, trying to make clothing more sustainable"
)

Nasia = User.create!(
  email: "nasia@amandla.com",
  password: "password",
  first_name: "Nasia",
  last_name: "Burnet",
  about_me: "All about ethical living!"
)

Pierre = User.create!(
  email: "pierre@amandla.com",
  password: "password",
  first_name: "Pierre",
  last_name: "Le Roux",
  about_me: "Coffee-obsessed husband and father. Want to keep serving the best coffees while ensuring the daughter can do the same one day"
)

Manu = User.create!(
  email: "manu@amandla.com",
  password: "password",
  first_name: "Manolo",
  last_name: "Caragol",
  about_me: "On a mission to prove that healthy, organic food is far from boring! Especially traditional Catalan cuisine"
)

Lisa = User.create!(
  email: "lisa@amandla.com",
  password: "password",
  first_name: "Lisa",
  last_name: "Rowe",
  about_me: "Inherited the family passion for coffee. Passionate women-rights activist and urban farmer"
)

fair_tacos = Place.create!(
    address: "Carrer del Torrent de l'Olla, 202, 08012 Barcelona",
    name: "Fair Tacos",
    category: "Restaurant",
    user: Dani,
    story: "Delicious, authentically-made vegetarian Tacos! Made with plenty of love and good vibes. Come join!",
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
    user: Clau,
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
    user: Blanca,
    story: "We make delicious, home-made meals made with love, using only seasonal vegetables most of which are locally-sourced",
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
    user: Vanessa,
    story: "A warm and peaceful space that looks after your wellbeing well being kind to our earth and it's inhabitants",
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
    user: Marc,
    story: "Organic, guilt-free products that nourish your body and help create a better world",
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
    user: Lutz,
    story: "Two Thirds is a Barcelona-based Bcorp brand which sells amazing, sustainable clothing for the outdoor enthusiast",
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
    user: Nasia,
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
    user: Pierre,
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
    user: Manu,
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
    user: Lisa,
    story: "I left behind 13 years of work in a non-profit foundation to set up The Magnificent a few months ago, an intimate and careful establishment that makes lovely coffee",
    google_maps_url: "https://goo.gl/maps/ZoUCejpqTq2kd5kE8"
)
the_magnificent.tag_list.add("women owned","fair trade")

# image related
file = URI.open('https://cafeselmagnifico.com/wp-content/uploads/2020/09/el-magnifico-119-1280x1600.jpg')
the_magnificent.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

the_magnificent.save!


wishlist_item_1 = WishlistItem.create!(
  user: Renan,
  place: fair_tacos
)

visit_1 = Visit.create!(
  user: Renan,
  place: fair_tacos
)

#fair tacos Questions
question_1 = Question.create!(
  user: Renan,
  place: fair_tacos,
  content: "Where do the Tacos come from?"
)

question_2 = Question.create!(
  user: Ana,
  place: fair_tacos,
  content: "Are any of your ingredients organic?"
)

question_3 = Question.create!(
  user: Leonardo,
  place: fair_tacos,
  content: "Do you serve Tacos that are not too spicy?"
)

question_4 = Question.create!(
  user: Louis,
  place: fair_tacos,
  content: "No fish tacos?"
)

question_5 = Question.create!(
  user: Jaume,
  place: fair_tacos,
  content: "Are you taking steps to be more sustainable? if so, what?"
)
#fair tacos answers
answer_1 = Answer.create!(
  user: Dani,
  question: question_1,
  content: "Mexico of course!"
)

answer_2 = Answer.create!(
  user: Dani,
  question: question_2,
  content: "About 60% are. We are in the process of sourcing organic suppliers of the rest"
)

answer_3 = Answer.create!(
  user: Dani,
  question: question_3,
  content: "Of course! We will happily adjust the spiceness according to your needs!"
)

answer_4 = Answer.create!(
  user: Dani,
  question: question_4,
  content: "Unfortunately not Louis, but we make a deliscious eggplant taco which substitutes for fish"
)

answer_5 = Answer.create!(
  user: Dani,
  question: question_5,
  content: "absolutely. We only supply compostable packaging and are on track to becomming fully organic"
)
#hansel_and_granel questions
question_6 = Question.create!(
  user: Renan,
  place: hansel_and_granel,
  content: "Are all of your products fair-trade?"
)

question_7 = Question.create!(
  user: Ana,
  place: hansel_and_granel,
  content: "How do you ensure all of your products are fair trade?"
)

question_8 = Question.create!(
  user: Leonardo,
  place: hansel_and_granel,
  content: "I've heard your shop is plastic-free, is this correct?"
)

question_9 = Question.create!(
  user: Louis,
  place: hansel_and_granel,
  content: "Are any of your products locally-sourced?"
)

question_10 = Question.create!(
  user: Jaume,
  place: hansel_and_granel,
  content: "Are you taking steps to be more sustainable? if so, what?"
)
#hansel_and_granel questions
answer_6 = Answer.create!(
  user: Clau,
  question: question_6,
  content: "Yes, we have made sure to source only free-trade goods. We are directly involved in sourcing"
)

answer_7 = Answer.create!(
  user: Clau,
  question: question_7,
  content: "We are directly involved in the sourcing, and have actually visited most of our suppliers in-person"
)

answer_8 = Answer.create!(
  user: Clau,
  question: question_8,
  content: "At the moment, we are approximately 95% plastic-free and that 5% of plastic packaging is in very large bulk orders"
)

answer_9 = Answer.create!(
  user: Clau,
  question: question_9,
  content: "Whenever possible, we source local. However for many of our powders like Maca and Cacao this is not possible"
)

answer_10 = Answer.create!(
  user: Clau,
  question: question_10,
  content: "We are constantly reviewing ways to be more sustainable. At the moment we are working on regenerative certification with some suppliers"
)
#lest tres gourmets questions
question_11 = Question.create!(
  user: Renan,
  place: les_tres_gourmets,
  content: "No fish dishes?"
)

question_12 = Question.create!(
  user: Ana,
  place: les_tres_gourmets,
  content: "Are your meals cooked on-site?"
)

question_13 = Question.create!(
  user: Leonardo,
  place: les_tres_gourmets,
  content: "Do you only cook seasonal vegetables?"
)

question_14 = Question.create!(
  user: Louis,
  place: les_tres_gourmets,
  content: "How do you ensure all of your ingredients are organic?"
)

question_15 = Question.create!(
  user: Jaume,
  place: les_tres_gourmets,
  content: "Will you marry me?!"
)
#les tres gourmets answers
answer_11 = Answer.create!(
  user: Blanca,
  question: question_11,
  content: "No, we only cook vegetarian dishes :)"
)

answer_12 = Answer.create!(
  user: Blanca,
  question: question_12,
  content: "Yes, our meals are cooked in our on-site kitchen."
)

answer_13 = Answer.create!(
  user: Blanca,
  question: question_13,
  content: "Yes! We pride ourselves on only using seasonal veggies in our meals"
)

answer_14 = Answer.create!(
  user: Blanca,
  question: question_14,
  content: "We work very closely with all suppliers to ensure transparancy"
)

answer_15 = Answer.create!(
  user: Blanca,
  question: question_15,
  content: "Thank you! But no. Maybe in another life"
)
#kaoni qs
question_16 = Question.create!(
  user: Renan,
  place: kaoni_wellbeing,
  content: "How are you organic?"
)

question_17 = Question.create!(
  user: Ana,
  place: kaoni_wellbeing,
  content: "Are you products free of animal-testing?"
)

question_18 = Question.create!(
  user: Leonardo,
  place: kaoni_wellbeing,
  content: "Is Kaoni just woman-owned?"
)

question_19 = Question.create!(
  user: Louis,
  place: kaoni_wellbeing,
  content: "Why Kaoni?"
)

question_20 = Question.create!(
  user: Jaume,
  place: kaoni_wellbeing,
  content: "Where are most of your products sourced?"
)
#kaoni As
answer_16 = Answer.create!(
  user: Vanessa,
  question: question_16,
  content: "All the ingredients in our products are organically certified"
)

answer_17 = Answer.create!(
  user: Vanessa,
  question: question_17,
  content: "Absolutely! It is our strictest criteria with suppliers"
)

answer_18 = Answer.create!(
  user: Vanessa,
  question: question_18,
  content: "Yes! myself and another female friend own Kaoni"
)

answer_19 = Answer.create!(
  user: Vanessa,
  question: question_19,
  content: "At Kaoni we have carefully created an environment of beauty and wellness in harmony with nature"
)

answer_20 = Answer.create!(
  user: Vanessa,
  question: question_20,
  content: "All over. Ideally locally, however most of them are only grown outside of Cataluna, and Spain for that matter"
)
#woki qs
question_21 = Question.create!(
  user: Renan,
  place: woki_organic_market,
  content: "Are all your goods organic?"
)

question_22 = Question.create!(
  user: Ana,
  place: woki_organic_market,
  content: "Are you women-owned?"
)

question_23 = Question.create!(
  user: Leonardo,
  place: woki_organic_market,
  content: "Are you only located in Gracia?"
)

question_24 = Question.create!(
  user: Louis,
  place: woki_organic_market,
  content: "Are any of your goods labeled regenerative"
)

question_25 = Question.create!(
  user: Jaume,
  place: woki_organic_market,
  content: "I heard you are organizing urban-farming projects, is this correct?"
)
#woki As
answer_21 = Answer.create!(
  user: Marc,
  question: question_21,
  content: "A very proud YES!"
)

answer_22 = Answer.create!(
  user: Marc,
  question: question_22,
  content: "No, we are 3 male friends that own the Woki franchise. But most of our management teams are woman"
)

answer_23 = Answer.create!(
  user: Marc,
  question: question_23,
  content: "No, we have shops in Born and Sant Gervasi"
)

answer_24 = Answer.create!(
  user: Marc,
  question: question_24,
  content: "Not yet, but working on it!"
)

answer_25 = Answer.create!(
  user: Marc,
  question: question_25,
  content: "Yes we are talks with some city council members about establishing proper urban-farming zones within the city"
)
#twothirds qs
question_26 = Question.create!(
  user: Renan,
  place: two_thirds,
  content: "How are you organic?"
)

question_27 = Question.create!(
  user: Ana,
  place: two_thirds,
  content: "Where are your clothes produced?"
)

question_28 = Question.create!(
  user: Leonardo,
  place: two_thirds,
  content: "Do you have a summer range?"
)

question_29 = Question.create!(
  user: Louis,
  place: two_thirds,
  content: "Do you sponsor any sporting events?"
)

question_30 = Question.create!(
  user: Jaume,
  place: two_thirds,
  content: "where is your cotton sourced?"
)
#twothirds As
answer_26 = Answer.create!(
  user: Lutz,
  question: question_26,
  content: "Our cotton is certified organic"
)

answer_27 = Answer.create!(
  user: Lutz,
  question: question_27,
  content: "In Portugal"
)

answer_28 = Answer.create!(
  user: Lutz,
  question: question_28,
  content: "Absolutely! New selection will be launching April 2021"
)

answer_29 = Answer.create!(
  user: Lutz,
  question: question_29,
  content: "We're sponsoring some junior surf events in Galicia"
)

answer_30 = Answer.create!(
  user: Lutz,
  question: question_30,
  content: "Tanzania and Turkey"
)
#sukhi qs
question_31 = Question.create!(
  user: Renan,
  place: sukhi_rugs,
  content: "How are you organic?"
)

question_32 = Question.create!(
  user: Ana,
  place: sukhi_rugs,
  content: "Where are your clothes produced?"
)

question_33 = Question.create!(
  user: Leonardo,
  place: sukhi_rugs,
  content: "can you do custom pieces?"
)

question_34 = Question.create!(
  user: Louis,
  place: sukhi_rugs,
  content: "Why Nepal"
)

question_35 = Question.create!(
  user: Jaume,
  place: sukhi_rugs,
  content: "only Nepal?"
)

answer_31 = Answer.create!(
  user: Nasia,
  question: question_31,
  content: "Our cotton is certified organic"
)

answer_32 = Answer.create!(
  user: Nasia,
  question: question_32,
  content: "In Barcelona!"
)

answer_33 = Answer.create!(
  user: Nasia,
  question: question_33,
  content: "Absolutely!"
)

answer_34 = Answer.create!(
  user: Nasia,
  question: question_34,
  content: "My family is from there"
)

answer_35 = Answer.create!(
  user: Nasia,
  question: question_35,
  content: "Yes, only Nepal"
)
#nomad qs
question_36 = Question.create!(
  user: Renan,
  place: nomad_coffee_lab,
  content: "Where are your beans sourced?"
)

question_37 = Question.create!(
  user: Ana,
  place: nomad_coffee_lab,
  content: "Are all your beans fair trade?"
)

question_38 = Question.create!(
  user: Leonardo,
  place: nomad_coffee_lab,
  content: "Do you also serve food?"
)

question_39 = Question.create!(
  user: Louis,
  place: nomad_coffee_lab,
  content: "Your best coffee?"
)

question_40 = Question.create!(
  user: Jaume,
  place: nomad_coffee_lab,
  content: "Are there more locations?"
)
#nomad as
answer_36 = Answer.create!(
  user: Pierre,
  question: question_36,
  content: "All over the world, but from cooperatives in each country where the coffee is organically shade-grown"
)

answer_37 = Answer.create!(
  user: Pierre,
  question: question_37,
  content: "Yes, we buy from small-scale farmers paid above fair trade wages"
)

answer_38 = Answer.create!(
  user: Pierre,
  question: question_38,
  content: "Absolutely! Some delicious tapas!"
)

answer_39 = Answer.create!(
  user: Pierre,
  question: question_39,
  content: "Our Kenya blend"
)

answer_40 = Answer.create!(
  user: Pierre,
  question: question_40,
  content: "Yes we are expanding to other parts of the city"
)


question_41 = Question.create!(
  user: Renan,
  place: restaurant_ohbo,
  content: "No fish dishes?"
)

question_42 = Question.create!(
  user: Ana,
  place: restaurant_ohbo,
  content: "Are your meals cooked on-site?"
)

question_43 = Question.create!(
  user: Leonardo,
  place: restaurant_ohbo,
  content: "Do you only cook seasonal vegetables?"
)

question_44 = Question.create!(
  user: Louis,
  place: restaurant_ohbo,
  content: "How do you ensure all of your ingredients are organic?"
)

question_45 = Question.create!(
  user: Jaume,
  place: restaurant_ohbo,
  content: "Most popular dish?"
)

answer_41 = Answer.create!(
  user: Manu,
  question: question_41,
  content: "We have a wonderful fish selection"
)

answer_42 = Answer.create!(
  user: Manu,
  question: question_42,
  content: "Yes, our meals are cooked in our on-site kitchen."
)

answer_43 = Answer.create!(
  user: Manu,
  question: question_43,
  content: "Yes! We pride ourselves on only using seasonal veggies in our meals"
)

answer_44 = Answer.create!(
  user: Manu,
  question: question_44,
  content: "We work very closely with all suppliers to ensure transparancy"
)

answer_45 = Answer.create!(
  user: Manu,
  question: question_45,
  content: "All. But our seafood is probably our greatest strength"
)

question_46 = Question.create!(
  user: Renan,
  place: the_magnificent,
  content: "Where are your beans sourced?"
)

question_47 = Question.create!(
  user: Ana,
  place: the_magnificent,
  content: "Are all your beans fair trade?"
)

question_48 = Question.create!(
  user: Leonardo,
  place: the_magnificent,
  content: "Do you also serve food?"
)

question_49 = Question.create!(
  user: Louis,
  place: the_magnificent,
  content: "Your best coffee?"
)

question_50 = Question.create!(
  user: Jaume,
  place: the_magnificent,
  content: "Are there more locations?"
)

answer_46 = Answer.create!(
  user: Lisa,
  question: question_46,
  content: "All over the world, but from cooperatives in each country where the coffee is organically shade-grown"
)

answer_47 = Answer.create!(
  user: Lisa,
  question: question_47,
  content: "Yes, we buy from small-scale farmers paid above fair trade wages"
)

answer_48 = Answer.create!(
  user: Lisa,
  question: question_48,
  content: "Absolutely! Some delicious tapas!"
)

answer_49 = Answer.create!(
  user: Lisa,
  question: question_49,
  content: "Our Kenya blend"
)

answer_50 = Answer.create!(
  user: Lisa,
  question: question_50,
  content: "Yes we are expanding to other parts of the city"
)

review_1 = Review.create!(
  visit: visit_1,
  content: "Favorite place in the city!",
  rating: 5
)

review_2 = Review.create!(
  visit: visit_1,
  content: "Magical place doing their bit. Highly recommend",
  rating: 5
)

review_3 = Review.create!(
  visit: visit_1,
  content: "Really cool spot with everything you need, guilt-free",
  rating: 4
)

# review_1 = Review.create!(
#   visit: visit_2,
#   content: "Favorite place in the city!",
#   rating: 5
# )

# review_2 = Review.create!(
#   visit: visit_2,
#   content: "Magical place doing their bit. Highly recommend",
#   rating: 5
# )

# review_3 = Review.create!(
#   visit: visit_2,
#   content: "Really cool spot with everything you need, guilt-free",
#   rating: 4
# )

# review_1 = Review.create!(
#   visit: visit_3,
#   content: "Favorite place in the city!",
#   rating: 5
# )

# review_2 = Review.create!(
#   visit: visit_3,
#   content: "Magical place doing their bit. Highly recommend",
#   rating: 5
# )

# review_3 = Review.create!(
#   visit: visit_3,
#   content: "Really cool spot with everything you need, guilt-free",
#   rating: 4
# )

# review_1 = Review.create!(
#   visit: visit_4,
#   content: "Favorite place in the city!",
#   rating: 5
# )

# review_2 = Review.create!(
#   visit: visit_4,
#   content: "Magical place doing their bit. Highly recommend",
#   rating: 5
# )

# review_3 = Review.create!(
#   visit: visit_4,
#   content: "Really cool spot with everything you need, guilt-free",
#   rating: 4
# )

# review_1 = Review.create!(
#   visit: visit_5,
#   content: "Favorite place in the city!",
#   rating: 5
# )

# review_2 = Review.create!(
#   visit: visit_5,
#   content: "Magical place doing their bit. Highly recommend",
#   rating: 5
# )

# review_3 = Review.create!(
#   visit: visit_5,
#   content: "Really cool spot with everything you need, guilt-free",
#   rating: 4
# )


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
