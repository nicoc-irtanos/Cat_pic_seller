require 'faker'

20.times do
  Item.create!(title: Faker::Cat.name, description: Faker::Cat.breed, price: 1)
end
