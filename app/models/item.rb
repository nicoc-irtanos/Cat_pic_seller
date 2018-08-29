class Item < ApplicationRecord
  has_many :line_items, dependent: :nullify

  validates :title, presence: {message: "Please enter a title"}, length: {minimum: 2}
  validates :price, presence: {message: "Please enter a price"}, numericality: { greater_than: 0 }
  validates :image_url,
      format: {
        with: /\.(jpg|png|gif)\z/i,
        message: "Must be either jpg, png or gif format"
      }
end
