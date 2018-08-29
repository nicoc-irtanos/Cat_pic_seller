class LineItemController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]

  def create
    item = Item.find(params[:item_id])
    @line_item = @cart.line_items.new(line_item_params)

  private
  
end
