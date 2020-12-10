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
    story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tincidunt augue, sit amet tincidunt nisl. Nunc ultrices, orci non ultrices vulputate, libero turpis facilisis ante, at ultricies ipsum nulla nec odio. Integer ut euismod libero. Maecenas augue lorem, varius tincidunt libero in, hendrerit vestibulum sapien. Nam volutpat urna ipsum, ut fermentum metus venenatis et. Sed ac lectus eget nisl consectetur vehicula at vel sapien. Donec et tortor sit amet turpis dictum iaculis vitae a nisi. Quisque risus risus, facilisis a vulputate non, facilisis non ipsum. Suspendisse aliquam metus vitae ante hendrerit varius. Vestibulum vitae urna sit amet mauris commodo finibus. Nulla cursus molestie mauris ut vehicula. Nunc eget erat nulla."
)
fair_tacos.tag_list.add("women owned", "vegetarian")



# image related
file = URI.open('https://themerrythought.com/wp-content/uploads/IMG_6615.jpg')
fair_tacos.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

fair_tacos.save!



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
