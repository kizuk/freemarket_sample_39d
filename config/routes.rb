Rails.application.routes.draw do


devise_for :users
root 'mains#index'

get 'users/create' => 'users#create'


end
