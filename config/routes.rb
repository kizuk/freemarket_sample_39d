Rails.application.routes.draw do


devise_for :users
root 'mains#index'

resources :items, only: [:show, :new, :create]

get 'users/create' => 'users#create'

end
