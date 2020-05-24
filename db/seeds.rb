# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

e1 = Establishment.create!(
  name: "Kaufleuten",
  longitude: 47.371807,
  latitude: 8.536378,
  address: "Pelikanpl. 18, 8001 Zürich",
  menu_items_attributes: [
    {
      name: "Caesar salad",
      price: 29.50
    },
    {
      name: "Wienerschnitzel",
      price: 47.50
    }
  ]
)

e2 = Establishment.create!(
  name: "Le Dézaley",
  longitude: 47.370873,
  latitude: 8.543876,
  address: "Römergasse 7/9, 8001 Zürich",
  menu_items_attributes: [
    {
      name: "Tea",
      price: 2
    },
    {
      name: "Coffee",
      price: 5
    },
  ]
)

e3 = Establishment.create!(
  name: "Bellevue Apotheke",
  longitude: 47.367058,
  latitude: 8.546206,
  address: "Theaterstrasse 14, 8001 Zürich",
  menu_items_attributes: [
    {
      name: "Ibuprofen",
      price: 10
    },
    {
      name: "Strepsils",
      price: 20
    },
  ]
)



u1 = User.create!(
  email: "admin@example.com",
  superadmin_role: true,
  password: "11111111",
  password_confirmation: "11111111"
)

u2 = User.create!(
  email: "donator@example.com",
  password: "11111111",
  password_confirmation: "11111111"
)

u1 = User.create!(
  email: "est1@example.com",
  establishment_role: true,
  password: "11111111",
  password_confirmation: "11111111",
  establishment: e1
)
