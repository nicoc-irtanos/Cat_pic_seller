class Cart < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :items

  def add_item
  end
end
