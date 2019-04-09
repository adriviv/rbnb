!# This file should contain all the record creation needed to seed the database with its default values.
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
  name: "Moovie",
  description: "Middle East moovie",
  image: "hehejhejeheeheejeee",
  location: 'Taiwan',
  category: "Marvel",
  rewards: 'KTV with me',
  amount_objective: 35,
  video: "ehhejhejejkejekjekjeke",
  user_id: 1
  )

Pledge.create!(
  amount: 23,
  user_id: 2,
  project_id: 1
  )

