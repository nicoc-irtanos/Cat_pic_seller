class OrderController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :redirect_if_cart_empty, only: [:new]

  private

  def redirect_if_cart_empty
    if @cart.line_items.empty?
      redirect_to root_url, notice: "Your cart is empty, please select at least one item before confirming your order."
    end
  end
end
