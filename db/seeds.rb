require 'faker'

20.times do
  Item.create!(title: Faker::Cat.name, description: Faker::Cat.breed, price: 1)
end

User.create!(email: "nico27france@gmail.com", password: "poulet", password_confirmation: "poulet")
