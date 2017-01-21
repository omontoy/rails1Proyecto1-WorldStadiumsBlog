Rails.application.routes.draw do

   get 'userposts' => 'user_posts#show'

  devise_for :users
   resources :constructions

   root 'constructions#index'
end
