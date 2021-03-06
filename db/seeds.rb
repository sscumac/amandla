require "open-uri"

puts "Destroying database"
Review.destroy_all
Answer.destroy_all
Question.destroy_all
WishlistItem.destroy_all
Visit.destroy_all
Place.destroy_all
User.destroy_all
puts "Database cleaned"

puts "Creating admins"

admin1 = User.create!(
  email: "admin1@amandla.com",
  password: "amandlaadminlove",
  first_name: "admin",
  last_name: "admin",
  about_me: "Developers of Amandla!"
)

file = URI.open('https://res.cloudinary.com/dpnjiruwh/image/upload/v1607942783/Amandla_logo_oqhbdp.png')
admin1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
admin1.save!

admin2 = User.create!(
  email: "admin2@amandla.com",
  password: "amandlaadminlove",
  first_name: "admin2",
  last_name: "admin2",
  about_me: "Developers of Amandla!"
)

file = URI.open('https://res.cloudinary.com/dpnjiruwh/image/upload/v1607942783/Amandla_logo_oqhbdp.png')
admin2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
admin2.save!

ricky = User.create!(
  email: "ricky@amandla.com",
  password: "247890",
  first_name: "Ricky",
  last_name: "Schoeman",
  about_me: "part of amandla admin"
)

file = URI.open('https://res.cloudinary.com/rickyschoeman/image/upload/v1613555058/WhatsApp_Image_2021-02-16_at_11.38.08_1_t6ufzp.jpg')
ricky.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
ricky.save!

puts "Creating users to ask questions"
#review/question askers
renan = User.create!(
  email: "renan@amandla.com",
  password: "password",
  first_name: "Renan",
  last_name: "Alvez",
  about_me: "Brazillian living in BCN"
)

file = URI.open('https://avatars2.githubusercontent.com/u/64256060?v=4')
renan.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
renan.save!

ana = User.create!(
  email: "ana@amandla.com",
  password: "password",
  first_name: "Ana",
  last_name: "Bajo",
  about_me: "Violinist, conscious consumer"
)

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1603116328/mjiwx5rvblarcg0olpas.jpg')
ana.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
ana.save!

leonardo = User.create!(
  email: "leo@amandla.com",
  password: "password",
  first_name: "Leo",
  last_name: "Cur",
  about_me: "Digital marketing master!"
)

file = URI.open('https://avatars0.githubusercontent.com/u/71294403?v=4')
leonardo.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
leonardo.save!

jaume = User.create!(
  email: "jaume@amandla.com",
  password: "password",
  first_name: "Jaume",
  last_name: "Ros Salvador",
  about_me: "ladies and loving. That's me"
)

file = URI.open('https://avatars2.githubusercontent.com/u/41579230?v=4')
jaume.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
jaume.save!

louis = User.create!(
  email: "louis@amandla.com",
  password: "password",
  first_name: "Louis",
  last_name: "Duquesne",
  about_me: "If I dont win you over with my charm and moves, I'll win you over with my cooking"
)

file = URI.open('https://avatars0.githubusercontent.com/u/64650914?v=4')
louis.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
louis.save!

puts "Completed"

puts "Creating users for business owners"
#business owner users
dani = User.create!(
  email: "dani@amandla.com",
  password: "password",
  first_name: "Dani",
  last_name: "Domingo",
  about_me: "Proud vegetarian taco maker, trying to lighten my load on the planet"
)

file = URI.open('https://avatars0.githubusercontent.com/u/70454213?v=4')
dani.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dani.save!

clau = User.create!(
  email: "clau@amandla.com",
  password: "password",
  first_name: "Clau",
  last_name: "Cherigny",
  about_me: "lover of all things real, natural and organic"
)

file = URI.open('https://image.freepik.com/free-photo/modern-woman-taking-selfie_23-2147893976.jpg')
clau.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
clau.save!

blanca = User.create!(
  email: "blanca@amandla.com",
  password: "password",
  first_name: "Blanca",
  last_name: "Puges",
  about_me: "Holistic nutritionist, I believe food is the only medicine we need"
)

file = URI.open('https://i.pinimg.com/originals/1b/d2/27/1bd227847cb695bdfb28ac551d988bc8.jpg')
blanca.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
blanca.save!

vanessa = User.create!(
  email: "vanessa@amandla.com",
  password: "password",
  first_name: "Vanessa",
  last_name: "Diaz",
  about_me: "There needs to be way more harmony between the beauty industry and nature. We hope to lead this charge"
)

file = URI.open('https://images14.eitb.eus/multimedia/recursos/participantes/concursantes/conquis2020/taldea1/vane.jpg')
vanessa.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
vanessa.save!


marc = User.create!(
  email: "marc@amandla.com",
  password: "password",
  first_name: "Marc",
  last_name: "Santi",
  about_me: "A strong desire to have a greater connection to, and awareness of, our food and the processes involved"
)

file = URI.open('https://oralmemories.com/wp-content/uploads/2017/09/Marc-Vives.png')
marc.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
marc.save!

lutz = User.create!(
  email: "lutz@amandla.com",
  password: "password",
  first_name: "Lutz",
  last_name: "Schwenke",
  about_me: "A passion for the ocean and environmental activism, trying to make clothing more sustainable"
)

file = URI.open('https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
lutz.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
lutz.save!

nasia = User.create!(
  email: "nasia@amandla.com",
  password: "password",
  first_name: "Nasia",
  last_name: "Burnet",
  about_me: "All about ethical living!"
)

file = URI.open('https://mumabroad.com/wp-content/uploads/2020/01/Nasia-Burnet-co-founder-Sukhi-handmade-rugs-by-women-for-women-social-impact-scaled-e1591982621294.jpg')
nasia.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
nasia.save!

pierre = User.create!(
  email: "pierre@amandla.com",
  password: "password",
  first_name: "Pierre",
  last_name: "Le Roux",
  about_me: "Coffee-obsessed husband and father. Want to keep serving the best coffees while ensuring the daughter can do the same one day"
)

file = URI.open('https://barcelona.reshapingwork.net/wp-content/uploads/2019/06/oscar-pierre.jpg')
pierre.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
pierre.save!

manu = User.create!(
  email: "manu@amandla.com",
  password: "password",
  first_name: "Manolo",
  last_name: "Caragol",
  about_me: "On a mission to prove that healthy, organic food is far from boring! Especially traditional Catalan cuisine"
)

file = URI.open('https://cadenaser00.epimg.net/ser/imagenes/2018/11/21/television/1542795828_843947_1542795968_noticia_normal.jpg')
manu.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
manu.save!

lisa = User.create!(
  email: "lisa@amandla.com",
  password: "password",
  first_name: "Lisa",
  last_name: "Rowe",
  about_me: "Inherited the family passion for coffee. Passionate women-rights activist and urban farmer"
)

file = URI.open('https://res.cloudinary.com/rickyschoeman/image/upload/v1613555058/WhatsApp_Image_2021-02-16_at_11.38.08_1_t6ufzp.jpg')
lisa.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
lisa.save!

malik = User.create!(
  email: "malik@amandla.com",
  password: "password",
  first_name: "Malik",
  last_name: "Soukri",
  about_me: "Background in finance, taking steps towards being more environmentally and socially sustainable"
)

file = URI.open('https://avatars2.githubusercontent.com/u/72385340?v=4')
malik.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
malik.save!


beth = User.create!(
  email: "beth@amandla.com",
  password: "password",
  first_name: "Beth",
  last_name: "Smith",
  about_me: "All about woman-empowerment and the environment. More compassion, less ego"
)


puts "Completed"

puts "Creating places"
fair_tacos = Place.create!(
    address: "Carrer del Torrent de l'Olla, 202, 08012 Barcelona",
    name: "Fair Tacos",
    category: "Restaurant",
    user: dani,
    story: "Delicious, authentically-made vegetarian Tacos! Made with plenty of love and good vibes. Come join!"
)
fair_tacos.tag_list.add("women owned", "vegetarian")

# image related
file = URI.open('https://themerrythought.com/wp-content/uploads/IMG_6615.jpg')
fair_tacos.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://lataqueria.eu/wp-content/uploads/2020/08/passatge-font-thumbnail-new.jpg')
fair_tacos.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0e/19/5b/b5/img-20170108-104406-largejpg.jpg')
fair_tacos.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2012/07/taqueria_dentro.jpg')
fair_tacos.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

fair_tacos.save!

hansel_and_granel = Place.create!(
    address: "Avinguda de la Riera de Cassoles, 08012 Barcelona",
    name: "Hansel & Granel",
    category: "Groceries",
    user: clau,
    story: "I left behind 13 years of work in a non-profit foundation to set up Handsel y Granel a few months ago, an intimate and careful establishment that sells products in bulk."
)
hansel_and_granel.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open('http://iaminthemoodforfood.com/wp-content/uploads/2015/06/hanselgranel.jpg')
hansel_and_granel.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://3.bp.blogspot.com/-L8_7umb8wc0/WjulNtlLdjI/AAAAAAAAAHs/od8qpt2iFmwi8D_sHZCz2iLZ_EySex53wCLcBGAs/s1600/IMG_5618.jpg')
hansel_and_granel.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://t1.salir.ltmcdn.com/es/places/9/6/3/img_127369_gra-de-gracia_0_600.jpg')
hansel_and_granel.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://api.super.so/asset/pepmaps.com/3f7abe54-7042-42e1-af62-46054a21431e.jpg?w=2000')
hansel_and_granel.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


hansel_and_granel.save!

les_tres_gourmets = Place.create!(
    address: "Carrer de Casanova, 118, 08036, Barcelona",
    name: "Les Tres Gourmets",
    category: "Restaurant",
    user: blanca,
    story: "We make delicious, home-made meals made with love, using only seasonal vegetables most of which are locally-sourced"
)
les_tres_gourmets.tag_list.add("women owned", "organic", "vegetarian")

# image related
file = URI.open('https://images.squarespace-cdn.com/content/v1/5e297d214c22026b05a67e7a/1587387672989-1YBKIZRUAXKNZU8TWA2I/ke17ZwdGBToddI8pDm48kHTHJlACqy9PR67J39ATHOp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfZ1qQlCBU8D8HwMSx19XWWhZWoAraqJt_ybhixA0kzVDVfRxgAIsQ7eQiOnQS3C_Q/DSC06095_websize.jpg?format=2500w')
les_tres_gourmets.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://images.squarespace-cdn.com/content/v1/5e297d214c22026b05a67e7a/1587390285208-PFI582POT8C0WOJG8V45/ke17ZwdGBToddI8pDm48kI03AIqr8VMSlBCjBq-1huUUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc6BtiZruVgad08XqUqInMmM0yqmF4DIviRWiX0XxMJsJgxcms5m1Pc31EKTWe8C5v/DSC06292_websize.jpg?format=2500w')
les_tres_gourmets.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://unbuendiaenbarcelona.com/wp-content/uploads/2019/02/IMG-20181205-WA0020.jpg')
les_tres_gourmets.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=653&q=80')
les_tres_gourmets.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

les_tres_gourmets.save!

kaoni_wellbeing = Place.create!(
    address: "Carrer de Saragossa, 39, 08006 Barcelona",
    name: "Kaoni Wellbeing",
    category: "Beauty and Wellness",
    user: vanessa,
    story: "A warm and peaceful space that looks after your wellbeing well being kind to our earth and it's inhabitants"
)
kaoni_wellbeing.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open("https://www.kaoni.es/wp-content/uploads/2019/04/AGA4384-1.jpg")
kaoni_wellbeing.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn1.treatwell.net/images/view/v2.i1177347.w1280.h800.xDB1310E9/')
kaoni_wellbeing.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/e9/6a/c7/entrada-de-kaoni.jpg')
kaoni_wellbeing.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn1.treatwell.net/images/view/v2.i2668976.w1280.h800.xCD4C75BE/')
kaoni_wellbeing.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

kaoni_wellbeing.save!

woki_organic_market = Place.create!(
    address: "Carrer d'Astúries, 22, 08012 Barcelona",
    name: "Woki Organic Market",
    category: "Groceries",
    user: marc,
    story: "Organic, guilt-free products that nourish your body and help create a better world"
)
woki_organic_market.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://fastly.4sqi.net/img/general/200x200/3606159_qBMVs8784rwqgltbq_mU50vTQkE_U4W8S1XYMbStMsM.jpg')
woki_organic_market.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://lh3.googleusercontent.com/-LtypI18hcwY/TXiuiMAWH2I/AAAAAAAAeiY/wc_YZwoMxoE/s640/422156688.jpg')
woki_organic_market.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/10/ef/c3/f1/o.jpg')
woki_organic_market.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.creaprojects.es/sites/default/files/portfolio/image/5size4_large.jpg')
woki_organic_market.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

woki_organic_market.save!


two_thirds = Place.create!(
    address: "Carrer del Monestir, 23, 08034 Barcelona",
    name: "Two Thirds",
    category: "Clothing and Fabrics",
    user: lutz,
    story: "Two Thirds is a Barcelona-based Bcorp brand which sells amazing, sustainable clothing for the outdoor enthusiast"
)
two_thirds.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://cdn.shopify.com/s/files/1/0995/5544/files/3_ebe0e568-2300-473f-af1d-d98b91d8f48a_1920x.jpg?v=1606807525')
two_thirds.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2014/10/twothirds-3-e1413312802244.jpg')
two_thirds.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.we-heart.com/upload-images/twothirdsbarcelona4@2x.jpg')
two_thirds.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://kaikucaffelatte.com/blog/wp-content/uploads/2016/07/Kaiku-Caffe-Latte-Tienda-Moda-Barcelona-TwoThirds.jpg')
two_thirds.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


two_thirds.save!

sukhi_rugs = Place.create!(
    address: "Carrer del Comte Borrell, 162, 08015",
    name: "Sukhi Rugs",
    category: "Clothing and Fabrics",
    user: nasia,
    story: "I left behind 13 years of work in a non-profit foundation to set up Rukhi a few months ago, an intimate and careful establishment that sells the best, sustainably-made rugs"
)
sukhi_rugs.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open('https://www.sukhi.es/pub/media/catalog/product/e/n/lited-braided-felt-asian-felt-ball-rugs.jpg')
sukhi_rugs.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thedesignsheppard.com/wp-content/uploads/2016/10/Sukhi_Overdyed-Patchwork-Rug-635x508.jpg')
sukhi_rugs.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.sukhirugs.com/pub/media/wysiwyg/Blog/Sukhirugs-com/four-designs-of-unique-flat-weave-hygge-sukhi-rugs-in-different-colors.jpg')
sukhi_rugs.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.easyrelooking.com/wp-content/uploads/Tappeto-Beni-Ourani_3.jpg')
sukhi_rugs.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

sukhi_rugs.save!

nomad_coffee_lab = Place.create!(
    address: "Passatge Sert, 12, 08003 Barcelona",
    name: "Nomad Coffee Lab",
    category: "Cafe",
    user: pierre,
    story: "I left behind 13 years of work in a non-profit foundation to set up Nomad a few months ago, an intimate and careful establishment that makes incredible coffee, guilt-free"
)
nomad_coffee_lab.tag_list.add("organic", "fair trade")

# image related
file = URI.open('https://nomadcoffee.es/wp-content/uploads/2020/03/nomad_coffee_lab_shop_barcelona.jpg')
nomad_coffee_lab.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://happyinspain.com/assets/uploads/2015/07/coffee-nomad1.jpg')
nomad_coffee_lab.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://barcelona.lecool.com/files/2016/06/1-IMG_1195.jpg')
nomad_coffee_lab.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://estaticos.elperiodico.com/resources/jpg/3/4/1517323351943.jpg')
nomad_coffee_lab.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

nomad_coffee_lab.save!

restaurant_ohbo = Place.create!(
    address: "Carrer del Dr. Fleming, 15, 08017 Barcelona",
    name: "Restaurant Ohbo",
    category: "Restaurant",
    user: manu,
    story: "I left behind 13 years of work in a non-profit foundation to set up Ohbo a few months ago, an intimate and careful establishment that makes delicious organic food"
)
restaurant_ohbo.tag_list.add("organic")

# image related
file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/06/f6/3b/92/ohbo-organic-cafe.jpg')
restaurant_ohbo.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://images.squarespace-cdn.com/content/v1/5ced0ce9c048c8000122a08b/1559659764694-GBYU4HW2Q1P0D9B0LFG3/ke17ZwdGBToddI8pDm48kN18azOU2uim5hsRbz6movgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYy7Mythp_T-mtop-vrsUOmeInPi9iDjx9w8K4ZfjXt2dtwYOJx-CYfqj9t40gyLNneEWcg90QZCueVFWrisuJvSW07ycm2Trb21kYhaLJjddA/separata-01.jpg?format=2500w')
restaurant_ohbo.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.mundodeportivo.com/r/GODO/MD/p6/Ocio/Imagenes/2019/06/07/Recortada/img_emuntanola_20190607-095120_imagenes_md_otras_fuentes_4-calabacin_relleno_de_verduras_asadas_del_huerto-kdJH-U46272018777221G-572x381@MundoDeportivo-Web.jpg')
restaurant_ohbo.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.bcnrestaurantes.com/img-trans/productos/22340/fotos/600-5d72263ad2d33-ohbo-organic-cafe.png')
restaurant_ohbo.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

restaurant_ohbo.save!

the_magnificent = Place.create!(
    address: "Carrer de l'Argenteria, 64, 08003 Barcelona",
    name: "The Magnificent",
    category: "Cafe",
    user: lisa,
    story: "I left behind 13 years of work in a non-profit foundation to set up The Magnificent a few months ago, an intimate and careful establishment that makes lovely coffee"
)
the_magnificent.tag_list.add("women owned","fair trade")

# image related
file = URI.open('https://cafeselmagnifico.com/wp-content/uploads/2020/09/el-magnifico-119-1280x1600.jpg')
the_magnificent.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2016/12/Sprudge-Barcelona_Coffee_Guide_SatansInside_Sara_Mason_17-740x494.jpg')
the_magnificent.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://331mrnu3ylm2k3db3s1xd1hg-wpengine.netdna-ssl.com/wp-content/uploads/2016/12/Sprudge-Barcelona_Coffee_Guide_BlackRemedyInside02_Sara_Mason_05-740x494.jpg')
the_magnificent.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://media.timeout.com/images/103897299/630/472/image.jpg')
the_magnificent.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

the_magnificent.save!


conscious_couscous = Place.create!(
    address: "Carrer Nou de la Rambla 22, 08001 Barcelona",
    name: "Conscious Couscous",
    category: "Restaurant",
    user: malik,
    story: "My love for cous cous was born in my childhood. Now that I live in Barcelona, I want to bring this love to the catalan people in a way they've never tasted before!"
)
conscious_couscous.tag_list.add("locally sourced", "vegetarian")

# image related
file = URI.open('https://foodyt.com/media/uploads/ensalada_cuscus1.jpg')
conscious_couscous.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1585238342070-61e1e768b1ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
conscious_couscous.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.thegourmetjournal.com/wp-content/uploads/2018/04/Los-100-mejores-restaurantes-Gourmet-Casual-de-Europa-2018.jpg')
conscious_couscous.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = URI.open('https://www.simplyscratch.com/wp-content/uploads/2014/01/Roasted-Vegetable-Couscous-www.SimplyScratch.com-tossy-toss.jpg')
conscious_couscous.photos_venue.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

conscious_couscous.save!


the_glass_house = Place.create!(
    address: "C. de Villarroel, 1, 08011 Barcelona",
    name: "The glass house",
    category: "Groceries",
    user: beth,
    story: "I left behind 13 years of work in a non-profit foundation to set up The Magnificent a few months ago, an intimate and careful establishment that makes lovely coffee"
)
the_glass_house.tag_list.add("women owned", "organic", "fair trade")

# image related
file = URI.open('https://images.unsplash.com/photo-1545601445-4d6a0a0565f0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80')
the_glass_house.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

the_glass_house.save!


puts "Completed"


wishlist_item_1 = WishlistItem.create!(
  user: renan,
  place: fair_tacos
)

puts "Creating questions and answers for places"


#fair tacos Questions
question_1 = Question.create!(
  user: renan,
  place: fair_tacos,
  content: "Where do the Tacos come from?"
)

question_2 = Question.create!(
  user: ana,
  place: fair_tacos,
  content: "Are any of your ingredients organic?"
)

question_3 = Question.create!(
  user: leonardo,
  place: fair_tacos,
  content: "Do you serve Tacos that are not too spicy?"
)

question_4 = Question.create!(
  user: louis,
  place: fair_tacos,
  content: "No fish tacos?"
)

question_5 = Question.create!(
  user: jaume,
  place: fair_tacos,
  content: "Are you taking steps to be more sustainable? if so, what?"
)
#fair tacos answers


answer_1 = Answer.create!(
  user: dani,
  question: question_1,
  content: "Mexico of course!"
)

answer_2 = Answer.create!(
  user: dani,
  question: question_2,
  content: "About 60% are. We are in the process of sourcing organic suppliers of the rest"
)

answer_3 = Answer.create!(
  user: dani,
  question: question_3,
  content: "Of course! We will happily adjust the spiceness according to your needs!"
)

answer_4 = Answer.create!(
  user: dani,
  question: question_4,
  content: "Unfortunately not Louis, but we make a deliscious eggplant taco which substitutes for fish"
)

answer_5 = Answer.create!(
  user: dani,
  question: question_5,
  content: "absolutely. We only supply compostable packaging and are on track to becomming fully organic"
)
#hansel_and_granel questions
question_6 = Question.create!(
  user: renan,
  place: hansel_and_granel,
  content: "Are all of your products fair-trade?"
)

question_7 = Question.create!(
  user: ana,
  place: hansel_and_granel,
  content: "How do you ensure all of your products are fair trade?"
)

question_8 = Question.create!(
  user: leonardo,
  place: hansel_and_granel,
  content: "I've heard your shop is plastic-free, is this correct?"
)

question_9 = Question.create!(
  user: louis,
  place: hansel_and_granel,
  content: "Are any of your products locally-sourced?"
)

question_10 = Question.create!(
  user: jaume,
  place: hansel_and_granel,
  content: "Are you taking steps to be more sustainable? if so, what?"
)
#hansel_and_granel questions
answer_6 = Answer.create!(
  user: clau,
  question: question_6,
  content: "Yes, we have made sure to source only free-trade goods. We are directly involved in sourcing"
)

answer_7 = Answer.create!(
  user: clau,
  question: question_7,
  content: "We are directly involved in the sourcing, and have actually visited most of our suppliers in-person"
)

answer_8 = Answer.create!(
  user: clau,
  question: question_8,
  content: "At the moment, we are approximately 95% plastic-free and that 5% of plastic packaging is in very large bulk orders"
)

answer_9 = Answer.create!(
  user: clau,
  question: question_9,
  content: "Whenever possible, we source local. However for many of our powders like Maca and Cacao this is not possible"
)

answer_10 = Answer.create!(
  user: clau,
  question: question_10,
  content: "We are constantly reviewing ways to be more sustainable. At the moment we are working on regenerative certification with some suppliers"
)
#lest tres gourmets questions
question_11 = Question.create!(
  user: renan,
  place: les_tres_gourmets,
  content: "No fish dishes?"
)

question_12 = Question.create!(
  user: ana,
  place: les_tres_gourmets,
  content: "Are your meals cooked on-site?"
)

question_13 = Question.create!(
  user: leonardo,
  place: les_tres_gourmets,
  content: "Do you only cook seasonal vegetables?"
)

question_14 = Question.create!(
  user: louis,
  place: les_tres_gourmets,
  content: "How do you ensure all of your ingredients are organic?"
)

question_15 = Question.create!(
  user: jaume,
  place: les_tres_gourmets,
  content: "Will you marry me?!"
)
#les tres gourmets answers
answer_11 = Answer.create!(
  user: blanca,
  question: question_11,
  content: "No, we only cook vegetarian dishes :)"
)

answer_12 = Answer.create!(
  user: blanca,
  question: question_12,
  content: "Yes, our meals are cooked in our on-site kitchen."
)

answer_13 = Answer.create!(
  user: blanca,
  question: question_13,
  content: "Yes! We pride ourselves on only using seasonal veggies in our meals"
)

answer_14 = Answer.create!(
  user: blanca,
  question: question_14,
  content: "We work very closely with all suppliers to ensure transparancy"
)

answer_15 = Answer.create!(
  user: blanca,
  question: question_15,
  content: "Thank you! But no. Maybe in another life"
)
#kaoni qs
question_16 = Question.create!(
  user: renan,
  place: kaoni_wellbeing,
  content: "How are you organic?"
)

question_17 = Question.create!(
  user: ana,
  place: kaoni_wellbeing,
  content: "Are you products free of animal-testing?"
)

question_18 = Question.create!(
  user: leonardo,
  place: kaoni_wellbeing,
  content: "Is Kaoni just woman-owned?"
)

question_19 = Question.create!(
  user: louis,
  place: kaoni_wellbeing,
  content: "Why Kaoni?"
)

question_20 = Question.create!(
  user: jaume,
  place: kaoni_wellbeing,
  content: "Where are most of your products sourced?"
)
#kaoni As
answer_16 = Answer.create!(
  user: vanessa,
  question: question_16,
  content: "All the ingredients in our products are organically certified"
)

answer_17 = Answer.create!(
  user: vanessa,
  question: question_17,
  content: "Absolutely! It is our strictest criteria with suppliers"
)

answer_18 = Answer.create!(
  user: vanessa,
  question: question_18,
  content: "Yes! myself and another female friend own Kaoni"
)

answer_19 = Answer.create!(
  user: vanessa,
  question: question_19,
  content: "At Kaoni we have carefully created an environment of beauty and wellness in harmony with nature"
)

answer_20 = Answer.create!(
  user: vanessa,
  question: question_20,
  content: "All over. Ideally locally, however most of them are only grown outside of Cataluna, and Spain for that matter"
)
#woki qs
question_21 = Question.create!(
  user: renan,
  place: woki_organic_market,
  content: "Are all your goods organic?"
)

question_22 = Question.create!(
  user: ana,
  place: woki_organic_market,
  content: "Are you women-owned?"
)

question_23 = Question.create!(
  user: leonardo,
  place: woki_organic_market,
  content: "Are you only located in Gracia?"
)

question_24 = Question.create!(
  user: louis,
  place: woki_organic_market,
  content: "Are any of your goods labeled regenerative"
)

question_25 = Question.create!(
  user: jaume,
  place: woki_organic_market,
  content: "I heard you are organizing urban-farming projects, is this correct?"
)
#woki As
answer_21 = Answer.create!(
  user: marc,
  question: question_21,
  content: "A very proud YES!"
)

answer_22 = Answer.create!(
  user: marc,
  question: question_22,
  content: "No, we are 3 male friends that own the Woki franchise. But most of our management teams are woman"
)

answer_23 = Answer.create!(
  user: marc,
  question: question_23,
  content: "No, we have shops in Born and Sant Gervasi"
)

answer_24 = Answer.create!(
  user: marc,
  question: question_24,
  content: "Not yet, but working on it!"
)

answer_25 = Answer.create!(
  user: marc,
  question: question_25,
  content: "Yes we are talks with some city council members about establishing proper urban-farming zones within the city"
)
#twothirds qs
question_26 = Question.create!(
  user: renan,
  place: two_thirds,
  content: "How are you organic?"
)

question_27 = Question.create!(
  user: ana,
  place: two_thirds,
  content: "Where are your clothes produced?"
)

question_28 = Question.create!(
  user: leonardo,
  place: two_thirds,
  content: "Do you have a summer range?"
)

question_29 = Question.create!(
  user: louis,
  place: two_thirds,
  content: "Do you sponsor any sporting events?"
)

question_30 = Question.create!(
  user: jaume,
  place: two_thirds,
  content: "where is your cotton sourced?"
)
#twothirds As
answer_26 = Answer.create!(
  user: lutz,
  question: question_26,
  content: "Our cotton is certified organic"
)

answer_27 = Answer.create!(
  user: lutz,
  question: question_27,
  content: "In Portugal"
)

answer_28 = Answer.create!(
  user: lutz,
  question: question_28,
  content: "Absolutely! New selection will be launching April 2021"
)

answer_29 = Answer.create!(
  user: lutz,
  question: question_29,
  content: "We're sponsoring some junior surf events in Galicia"
)

answer_30 = Answer.create!(
  user: lutz,
  question: question_30,
  content: "Tanzania and Turkey"
)
#sukhi qs
question_31 = Question.create!(
  user: renan,
  place: sukhi_rugs,
  content: "How are you organic?"
)

question_32 = Question.create!(
  user: ana,
  place: sukhi_rugs,
  content: "Where are your clothes produced?"
)

question_33 = Question.create!(
  user: leonardo,
  place: sukhi_rugs,
  content: "can you do custom pieces?"
)

question_34 = Question.create!(
  user: louis,
  place: sukhi_rugs,
  content: "Why Nepal"
)

question_35 = Question.create!(
  user: jaume,
  place: sukhi_rugs,
  content: "only Nepal?"
)

answer_31 = Answer.create!(
  user: nasia,
  question: question_31,
  content: "Our cotton is certified organic"
)

answer_32 = Answer.create!(
  user: nasia,
  question: question_32,
  content: "In Barcelona!"
)

answer_33 = Answer.create!(
  user: nasia,
  question: question_33,
  content: "Absolutely!"
)

answer_34 = Answer.create!(
  user: nasia,
  question: question_34,
  content: "My family is from there"
)

answer_35 = Answer.create!(
  user: nasia,
  question: question_35,
  content: "Yes, only Nepal"
)
#nomad qs
question_36 = Question.create!(
  user: renan,
  place: nomad_coffee_lab,
  content: "Where are your beans sourced?"
)

question_37 = Question.create!(
  user: ana,
  place: nomad_coffee_lab,
  content: "Are all your beans fair trade?"
)

question_38 = Question.create!(
  user: leonardo,
  place: nomad_coffee_lab,
  content: "Do you also serve food?"
)

question_39 = Question.create!(
  user: louis,
  place: nomad_coffee_lab,
  content: "Your best coffee?"
)

question_40 = Question.create!(
  user: jaume,
  place: nomad_coffee_lab,
  content: "Are there more locations?"
)
#nomad as
answer_36 = Answer.create!(
  user: pierre,
  question: question_36,
  content: "All over the world, but from cooperatives in each country where the coffee is organically shade-grown"
)

answer_37 = Answer.create!(
  user: pierre,
  question: question_37,
  content: "Yes, we buy from small-scale farmers paid above fair trade wages"
)

answer_38 = Answer.create!(
  user: pierre,
  question: question_38,
  content: "Absolutely! Some delicious tapas!"
)

answer_39 = Answer.create!(
  user: pierre,
  question: question_39,
  content: "Our Kenya blend"
)

answer_40 = Answer.create!(
  user: pierre,
  question: question_40,
  content: "Yes we are expanding to other parts of the city"
)


question_41 = Question.create!(
  user: renan,
  place: restaurant_ohbo,
  content: "No fish dishes?"
)

question_42 = Question.create!(
  user: ana,
  place: restaurant_ohbo,
  content: "Are your meals cooked on-site?"
)

question_43 = Question.create!(
  user: leonardo,
  place: restaurant_ohbo,
  content: "Do you only cook seasonal vegetables?"
)

question_44 = Question.create!(
  user: louis,
  place: restaurant_ohbo,
  content: "How do you ensure all of your ingredients are organic?"
)

question_45 = Question.create!(
  user: jaume,
  place: restaurant_ohbo,
  content: "Most popular dish?"
)

answer_41 = Answer.create!(
  user: manu,
  question: question_41,
  content: "We have a wonderful fish selection"
)

answer_42 = Answer.create!(
  user: manu,
  question: question_42,
  content: "Yes, our meals are cooked in our on-site kitchen."
)

answer_43 = Answer.create!(
  user: manu,
  question: question_43,
  content: "Yes! We pride ourselves on only using seasonal veggies in our meals"
)

answer_44 = Answer.create!(
  user: manu,
  question: question_44,
  content: "We work very closely with all suppliers to ensure transparancy"
)

answer_45 = Answer.create!(
  user: manu,
  question: question_45,
  content: "All. But our seafood is probably our greatest strength"
)

question_46 = Question.create!(
  user: renan,
  place: the_magnificent,
  content: "Where are your beans sourced?"
)

question_47 = Question.create!(
  user: ana,
  place: the_magnificent,
  content: "Are all your beans fair trade?"
)

question_48 = Question.create!(
  user: leonardo,
  place: the_magnificent,
  content: "Do you also serve food?"
)

question_49 = Question.create!(
  user: louis,
  place: the_magnificent,
  content: "Your best coffee?"
)

question_50 = Question.create!(
  user: jaume,
  place: the_magnificent,
  content: "Are there more locations?"
)

answer_46 = Answer.create!(
  user: lisa,
  question: question_46,
  content: "All over the world, but from cooperatives in each country where the coffee is organically shade-grown"
)

answer_47 = Answer.create!(
  user: lisa,
  question: question_47,
  content: "Yes, we buy from small-scale farmers paid above fair trade wages"
)

answer_48 = Answer.create!(
  user: lisa,
  question: question_48,
  content: "Absolutely! Some delicious tapas!"
)

answer_49 = Answer.create!(
  user: lisa,
  question: question_49,
  content: "Our Kenya blend"
)

answer_50 = Answer.create!(
  user: lisa,
  question: question_50,
  content: "Yes we are expanding to other parts of the city"
)
#glass house qs
question_51 = Question.create!(
  user: jaume,
  place: the_glass_house,
  content: "Are there more locations?"
)

answer_51 = Answer.create!(
  user: beth,
  question: question_51,
  content: "no, just one location for now"
)

question_52 = Question.create!(
  user: ana,
  place: conscious_couscous,
  content: "When is the new dessert menu being released?"
)


answer_52 = Answer.create!(
  user: malik,
  question: question_52,
  content: "We are working very hard on it! We will release it in a week"
)

visit_1 = Visit.create!(
  user: renan,
  place: fair_tacos
)

visit_2 = Visit.create!(
  user: jaume,
  place: fair_tacos
)

visit_3 = Visit.create!(
  user: ana,
  place: fair_tacos
)

visit_4 = Visit.create!(
  user: ana,
  place: hansel_and_granel
)

visit_5 = Visit.create!(
  user: leonardo,
  place: hansel_and_granel
)

visit_6 = Visit.create!(
  user: louis,
  place: hansel_and_granel
)

visit_7 = Visit.create!(
  user: louis,
  place: kaoni_wellbeing
)

visit_8 = Visit.create!(
  user: ana,
  place: kaoni_wellbeing
)

visit_9 = Visit.create!(
  user: jaume,
  place: kaoni_wellbeing
)

visit_10 = Visit.create!(
  user: renan,
  place: kaoni_wellbeing
)

visit_11 = Visit.create!(
  user: leonardo,
  place: kaoni_wellbeing
)

visit_12 = Visit.create!(
  user: ricky,
  place: hansel_and_granel
)

visit_13 = Visit.create!(
  user: ricky,
  place: les_tres_gourmets
)

visit_14 = Visit.create!(
  user: leonardo,
  place: two_thirds
)

visit_15 = Visit.create!(
  user: renan,
  place: woki_organic_market
)

visit_16 = Visit.create!(
  user: jaume,
  place: sukhi_rugs
)

visit_17 = Visit.create!(
  user: louis,
  place: nomad_coffee_lab
)

visit_18 = Visit.create!(
  user: leonardo,
  place: restaurant_ohbo
)

visit_19 = Visit.create!(
  user: ricky,
  place: the_magnificent
)

visit_20 = Visit.create!(
  user: louis,
  place: the_magnificent
)

visit_21 = Visit.create!(
  user: leonardo,
  place: the_glass_house
)

visit_22 = Visit.create!(
  user: louis,
  place: conscious_couscous
)

visit_23 = Visit.create!(
  user: jaume,
  place: conscious_couscous
)

puts "Completed"

puts "Creating reviews"

review_1 = Review.create!(
  visit: visit_1,
  content: "Favorite place in the city!",
  rating: 5
)

review_2 = Review.create!(
  visit: visit_2,
  content: "Magical place doing their bit. Highly recommend",
  rating: 4
)

review_3 = Review.create!(
  visit: visit_3,
  content: "Really cool spot with everything you need, guilt-free",
  rating: 4
)

review_4 = Review.create!(
  visit: visit_4,
  content: "I can really hard to please, but this place did just that!",
  rating: 3
)

review_5 = Review.create!(
  visit: visit_5,
  content: "Great place, great to meet and chat to the lovely owner too",
  rating: 4
)

review_6 = Review.create!(
  visit: visit_6,
  content: "Favorite place in the city!",
  rating: 5
)

review_7 = Review.create!(
  visit: visit_7,
  content: "Magical place doing their bit. Highly recommend",
  rating: 5
)

review_8 = Review.create!(
  visit: visit_8,
  content: "Really cool spot with everything you need, guilt-free",
  rating: 4
)

review_9 = Review.create!(
  visit: visit_9,
  content: "Favorite place in the city!",
  rating: 5
)

review_10 = Review.create!(
  visit: visit_10,
  content: "Magical place doing their bit. Highly recommend",
  rating: 5
)

review_11 = Review.create!(
  visit: visit_11,
  content: "Really cool spot with everything you need, guilt-free",
  rating: 4
)

review_12 = Review.create!(
  visit: visit_12,
  content: "A new favorite!",
  rating: 4
)

review_13 = Review.create!(
  visit: visit_13,
  content: "Food is sooooo good!",
  rating: 4
)

review_14 = Review.create!(
  visit: visit_14,
  content: "In love with their clothing!",
  rating: 4
)

review_15 = Review.create!(
  visit: visit_15,
  content: "Favorite place in the city!",
  rating: 5
)

review_16 = Review.create!(
  visit: visit_16,
  content: "Magical place doing their bit. Highly recommend",
  rating: 5
)

review_17 = Review.create!(
  visit: visit_17,
  content: "Really cool spot with everything you need, guilt-free",
  rating: 4
)

review_18 = Review.create!(
  visit: visit_18,
  content: "I used to find healthy, organic food boring. Not anymore!",
  rating: 4
)

review_19 = Review.create!(
  visit: visit_19,
  content: "Amazing cafe! Could spend all day here!",
  rating: 4
)

review_20 = Review.create!(
  visit: visit_20,
  content: "Good coffee, food, and music. Ticks all the boxes",
  rating: 5
)

review_21 = Review.create!(
  visit: visit_21,
  content: "Not my favorite place, definitely better places out there",
  rating: 2
)


review_22 = Review.create!(
  visit: visit_22,
  content: "The cous cous was so fabulous! Will come back as soon as possible.",
  rating: 5
)

review_23 = Review.create!(
  visit: visit_23,
  content: "Food was incredible. They source locally which gives the food local flavors. Will stay for dessert next!",
  rating: 4
)



puts "Completed"

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
