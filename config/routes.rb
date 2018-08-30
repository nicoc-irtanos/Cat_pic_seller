Rails.application.routes.draw do

  get 'orders/show'
  get 'items/catalog'
  resources :charges

  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get '/catalog', to: 'items#catalog'
  get '/new_collection', to: 'home#new_collection'

  get '/cart', to: 'carts#show'
  get '/checkout', to: 'orders#show'
  get '/signup', to: 'home#signup'
  get '/profil', to: 'home#profil'
  get '/edit_profil', to: 'home#edit_profil'
  get '/confirmation', to: 'home#confirmation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#get '/product_europeen', to: 'home#product_europeen'
#get '/product_siberien', to: 'home#product_siberien'
#get '/product_persan', to: 'home#product_persan'
