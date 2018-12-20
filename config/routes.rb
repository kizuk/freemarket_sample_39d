Rails.application.routes.draw do


devise_for :users
root 'items#index'

resources :items, only: [:show, :new, :create]
resources :users, only: [:show]

get 'users/:id/profile' => 'users#profile'
get 'items/:id/confirmation' => 'items#confirmation'
get 'items/:id/buy' => 'items#buy'
get 'users/:id/card' => 'credit_cards#index'
get 'users/:id/card/new' => 'credit_cards#new'
post 'users/:id/card' => 'credit_cards#create'
get 'users/:id/logout' => 'users#logout'

end
