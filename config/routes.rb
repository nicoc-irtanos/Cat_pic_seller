Rails.application.routes.draw do
  root 'home#index'
  get '/product_nature', to: 'home#product_nature'
  get '/product_white', to: 'home#product_white'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
