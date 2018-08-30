class Item < ApplicationRecord
  has_many :cart_items
  has_many :carts, through: :cart_items
  validates :title, presence: {message: "Veuillez donner un titre"}, length: {minimum: 2}
  validates :price, presence: {message: "Veuillez renseigner un prix"}
end
