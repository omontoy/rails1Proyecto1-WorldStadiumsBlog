Rails.application.routes.draw do
   get 'userposts' => 'user_posts#show'

  devise_for :users

   resources :constructions do
      resources :comments, only: [:create, :destroy]
   end

   root 'constructions#index'
end
