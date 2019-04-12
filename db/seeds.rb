# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Pledge.destroy_all


User.create!(
  first_name: 'luke',
  last_name: 'Harris',
  address: '35 Huaquiang Bei Street',
  credit_card_number: 2737,
  password: '123456',
  email: 'luke@gmail.com'
)
User.create!(
  first_name: 'Sofa',
  last_name: 'Pimienta',
  address: '35 Futian Street',
  credit_card_number: 6387,
  password: '987654',
  email: 'sofa@gmail.com'
)

Project.create!(
  name: "Star Wars 7",
  description: "The next episode of StarWars",
  image: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/05/redcp_intl_character_banner_uk-3-920x584.jpg",
  location: 'Taiwan',
  category: "Fiction",
  rewards: 'participate to the moovie',
  amount_objective: 200000000,
  video: "none",
  user_id: 1
  )
Project.create!(
  name: "Lords Of the Rings 4 ",
  description: "The final movie of the saga",
  image: "https://is2-ssl.mzstatic.com/image/thumb/Video62/v4/26/de/05/26de05c9-0230-ba80-1d9e-403cf0a162f6/pr_source.lsr/268x0w.png",
  location: 'New Zealand',
  category: "Fantasy",
  rewards: 'Meet the cast',
  amount_objective: 150000000,
  video: "none",
  user_id: 2
  )
Project.create!(
  name: "Avengers: Endgame",
  description: "The culmination of the Infinity Saga",
  image: "https://upload.wikimedia.org/wikipedia/en/f/f9/TheAvengers2012Poster.jpg",
  location: 'Los Angeles',
  category: "Marvel",
  rewards: 'Pre Screening',
  amount_objective: 300000000,
  video: "none",
  user_id: 1
  )
Project.create!(
  name: "Terminator 6",
  description: "Middle East moovie",
  image: "http://static1.squarespace.com/static/585e8f70bebafb65339930b8/5875420729687f83cf2ea7b8/5a9c08b224a69491feccba3b/1520210324505/terminator-3-rise-of-the-machines.001.jpeg?format=1500w",
  location: 'Mexico',
  category: "Sci-Fi",
  rewards: 'Travel to premiere',
  amount_objective: 35,
  video: "none",
  user_id: 1
  )



Pledge.create!(
  amount: 23,
  user_id: 2,
  project_id: 1
  )

