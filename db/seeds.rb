require 'faker'

2.times do
  Item.create!(title: "Petit chaton", description: 'Super mignon !', price: 1)
end
