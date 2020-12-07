Answer.destroy_all
Question.destroy_all
WishlistItem.destroy_all
Visit.destroy_all
Place.destroy_all
User.destroy_all



ilse = User.create!(
  email: "ilse@amandla.com",
  password: "password"
)

sebastian = User.create!(
  email: "sebastian@amandla.com",
  password: "password"
)

fair_tacos = Place.create!(
    address: "Torrent de la Olla 202, 08012 Barcelona",
    name: "Fair Tacos",
    category: "Restaurant",
    user: ilse,
    story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tincidunt augue, sit amet tincidunt nisl. Nunc ultrices, orci non ultrices vulputate, libero turpis facilisis ante, at ultricies ipsum nulla nec odio. Integer ut euismod libero. Maecenas augue lorem, varius tincidunt libero in, hendrerit vestibulum sapien. Nam volutpat urna ipsum, ut fermentum metus venenatis et. Sed ac lectus eget nisl consectetur vehicula at vel sapien. Donec et tortor sit amet turpis dictum iaculis vitae a nisi. Quisque risus risus, facilisis a vulputate non, facilisis non ipsum. Suspendisse aliquam metus vitae ante hendrerit varius. Vestibulum vitae urna sit amet mauris commodo finibus. Nulla cursus molestie mauris ut vehicula. Nunc eget erat nulla."
)

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

answer_1 = Answer.create!(
  user: ilse,
  question: question_1,
  content: "Mexico of course!"
)

puts "total users: #{User.count}"
puts "total places: #{Place.count}"
puts "total wishlist_items: #{WishlistItem.count}"
puts "total visits: #{Visit.count}"
puts "total questions: #{Question.count}"
puts "total answers: #{Answer.count}"


# TODO: add tasks when the Gem is ready
# TODO: add associations
# TODO: add pictures
