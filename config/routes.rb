Rails.application.routes.draw do

  devise_for :users
   resources :constructions

   root 'constructions#index'
end
