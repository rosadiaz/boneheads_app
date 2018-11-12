# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

PASSWORD = "123"

super_user = User.create(
  first_name: "Super",
  last_name: "User",
  email: "super@user.com",
  password: PASSWORD,
  user_type: "admin"
)

puts('🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕')
puts('Created super user:', super_user.email)

5.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  u = User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
    password: PASSWORD,
    user_type: "walker"
  )
end

15.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  u = User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
    password: PASSWORD,
    user_type: "client"
  )
end

puts('🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕‍🐕')
puts('Created walkers and clients:', User.all.count)