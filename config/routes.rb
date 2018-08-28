Rails.application.routes.draw do
  root 'home#index'
  get '/product_europeen', to: 'home#product_europeen'
  get '/product_siberien', to: 'home#product_siberien'
  get '/product_persan', to: 'home#product_persan'
  get '/product_shop', to: 'home#product_shop'
  get '/product_shop2', to: 'home#product_shop2'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
