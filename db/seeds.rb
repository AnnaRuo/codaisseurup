# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all


modern_and_minimal = Category.create(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create(name: "Warm and Cozy")


maija = User.create!(
  email: 'maija@example.com',
  password: '123456'
)

Event.create!(
  name: "Happy Event",
  description: "Open Event",
  location: "Amsterdam",
  price: 80.0,
  capacity: 100,
  includes_food: "Yes",
  includes_drinks: "Yes",
  starts_at: 12/12,
  ends_at: 16/12,
  active: true,
  user: maija,
  category: [modern_and_minimal, sleek_and_sophisticated]
)

kalle = User.create!(
  email: 'kalle@example.com',
  password: '654321'
)

Event.create!(
  name: "Rock Event",
  description: "Rock n Roll Event",
  location: "Maastrict",
  price: 50.0,
  capacity: 60,
  includes_food: "No",
  includes_drinks: "Yes",
  starts_at: 1/12,
  ends_at: 5/12,
  active: true,
  user: kalle,
  category: [modern_and_minimal, sleek_and_sophisticated]
)
