Rails.application.routes.draw do


devise_for :users
root 'mains#index'

get 'mains' => 'mains#mypage'

end
