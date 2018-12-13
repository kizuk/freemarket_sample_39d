Rails.application.routes.draw do


devise_for :users
root 'mains#index'
get 'users/create' => 'users#create'
get 'users/mypage' => 'mains#mypage'
get 'mains/item_sell' => 'mains#item_sell'


end
