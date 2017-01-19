Rails.application.routes.draw do
  devise_for :users
   resources :stadiums

   root 'stadiums#index'
end
