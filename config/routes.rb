Rails.application.routes.draw do

  resources :charges

  root 'home#index'
    devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  get '/product_europeen', to: 'home#product_europeen'
  get '/product_siberien', to: 'home#product_siberien'
  get '/product_persan', to: 'home#product_persan'
  get '/basket', to: 'home#basket'
  get '/checkout', to: 'home#checkout'
  get '/signup', to: 'home#signup'
  get '/profil', to: 'home#profil'
  get '/edit_profil', to: 'home#edit_profil'
  get '/confirmation', to: 'home#confirmation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
