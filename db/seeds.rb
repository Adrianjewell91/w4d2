# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.create(name: Faker::Name.name, sex: 'M',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'F',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'M',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'F',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'M',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'F',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))
Cat.create(name: Faker::Name.name, sex: 'F',birth_date: Faker::Time.between(DateTime.now-rand(10000),DateTime.now))


# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :integer          not null, primary key
#  cat_id     :integer          not null
#  start_date :date
#  end_date   :date
#  status     :string           default("PENDING"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null


CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
CatRentalRequest.create(cat_id: rand(6), status: "PENDING")
