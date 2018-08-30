module CurrentCart
 private

 def set_cart
   @cart = Cart.find_by(id: session[:card_id]) || Cart.create
   session[:cart_id] ||= @cart.id
 end
end
