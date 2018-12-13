Rails.application.routes.draw do


devise_for :users
root 'mains#index
get 'users/create' => 'users#create

resources :items, only: [:show, :new, :create]

get 'users/create' => 'users#create'

end
