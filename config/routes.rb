Rails.application.routes.draw do
 
  devise_for :user_models
  resources :sozlers
 get  'home/about'
 root 'home#index'
 
 get 'arama', to: "home#arama"
 
 
end
