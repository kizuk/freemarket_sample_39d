Rails.application.routes.draw do


devise_for :users
root 'mains#index'

get 'mains' => 'mains#item_sell'
get 'users/create' => 'users#create'

end
