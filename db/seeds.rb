# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
Apartment.destroy_all
User.destroy_all
Bill.destroy_all

require 'faker'

5.times do
  Apartment.create(name: Faker::Movies::LordOfTheRings.location, address: Faker::TvShows::GameOfThrones.city, lease_start: Faker::Date.backward(14), lease_end: Faker::Date.forward(23), landlord_name: Faker::TvShows::GameOfThrones.character, landlord_contact: Faker::PhoneNumber.cell_phone, events: Faker::Football.competition, necessities: Faker::Food.ingredient, chores: Faker::Company.bs)
end

3.times do
  User.create(name: Faker::TvShows::GameOfThrones.character, admin: true, apartment_id: Apartment.all.sample.id, image: Faker::Fillmurray.image, associates: Faker::GreekPhilosophers.name)
end

7.times do
  User.create(name: Faker::TvShows::GameOfThrones.character, admin: false, apartment_id: Apartment.all.sample.id, image: Faker::Fillmurray.image, associates: Faker::GreekPhilosophers.name)
end

5.times do
  Bill.create(name: "electricity", amount: 150.00, apartment_id: Apartment.all.sample.id, image: Faker::Currency.symbol)
end

5.times do
  Bill.create(name: "gas", amount: 125.00, apartment_id: Apartment.all.sample.id, image: Faker::Currency.symbol)
end

5.times do
  Bill.create(name: "rent", amount: 2500.00, apartment_id: Apartment.all.sample.id, image: Faker::Currency.symbol)
end
