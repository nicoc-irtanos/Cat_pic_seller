class Product < ApplicationRecord
  has_many :line_items, dependent: :nullify
  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
  validates :title, uniqueness: { case_sensitive: false }
  validates :image_url,
    format: {
      with: /\.(jpg|png|gif)\z/i,
      message: "must be in jpg, png or gif format"
    },
    allow_blank: true
end
