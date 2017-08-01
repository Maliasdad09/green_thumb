Rails.application.routes.draw do
  devise_for :caregivers, path: 'caregivers'
  devise_for :users, path: 'users'
  
  root to: "home#index"
  
  resources :plants
  resources :tasks


end
