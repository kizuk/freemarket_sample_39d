Rails.application.routes.draw do


devise_for :users
root 'items#index'

resources :items, only: [:new, :create, :show, :buy]
resources :users, only: [:show]

post 'items/:id/purchase' => 'items#purchase'
get 'items/:id/item_sell' => 'items#item_sell'
get 'items/:id/buy' => 'items#buy'
get 'items/:id/confirmation' => 'items#confirmation'

get 'users/:id/profile' => 'users#profile'
get 'users/:id/card' => 'credit_cards#index'
get 'users/:id/card/new' => 'credit_cards#new'
post 'users/:id/card' => 'credit_cards#create'
get 'users/:id/logout' => 'users#logout'

end
