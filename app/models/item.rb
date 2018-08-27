class Item < ApplicationRecord
  
  validates :title, presence: {message: "Veuillez donner un titre"}, length: {minimum: 2}
  validates :price, presence: {message: "Veuillez renseigner un prix"}
end
