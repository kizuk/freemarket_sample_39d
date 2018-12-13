Rails.application.routes.draw do


devise_for :users
root 'items#index'

resources :items, only: [:show, :new, :create]

get 'users/create' => 'users#create'
get 'mains' => 'mains#item_buy_conf'

end
