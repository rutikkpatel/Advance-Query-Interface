# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Employee.destroy_all

# Seeding Full Time Available Female
5.times do |i|
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    contact_number: Faker::PhoneNumber.phone_number_with_country_code,
    age: Faker::Number.number(digits: 2),
    gender: 'female',
    designation_id: 2,
    joining_date: Faker::Date.between(from: '2014-12-20', to: '2024-03-28'),
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2001-01-01'),
    salary: Faker::Number.number(digits: 5),
    availability: 'full_time'
  )
  puts "Full Time Available Female Employee #{i} Created"
end

# Seeding Part Time Available Female
5.times do |i|
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    contact_number: Faker::PhoneNumber.phone_number_with_country_code,
    age: Faker::Number.number(digits: 2),
    gender: 'female',
    designation_id: 1,
    joining_date: Faker::Date.between(from: '2014-12-20', to: '2024-03-28'),
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2001-01-01'),
    salary: Faker::Number.number(digits: 5),
    availability: 'part_time'
  )
  puts "Part Time Available Female Employee #{i} Created"
end

# Seeding Full Time Available Male
5.times do |i|
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    contact_number: Faker::PhoneNumber.phone_number_with_country_code,
    age: Faker::Number.number(digits: 2),
    gender: 'male',
    designation_id: 2,
    joining_date: Faker::Date.between(from: '2014-12-20', to: '2024-03-28'),
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2001-01-01'),
    salary: Faker::Number.number(digits: 5),
    availability: 'full_time'
  )
  puts "Full Time Available Male Employee #{i} Created"
end

# Seeding Part Time Available Male
5.times do |i|
  Employee.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    contact_number: Faker::PhoneNumber.phone_number_with_country_code,
    age: Faker::Number.number(digits: 2),
    gender: 'male',
    designation_id: 1,
    joining_date: Faker::Date.between(from: '2014-12-20', to: '2024-03-28'),
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2001-01-01'),
    salary: Faker::Number.number(digits: 5),
    availability: 'part_time'
  )
  puts "Part Time Available Male Employee #{i} Created"
end
