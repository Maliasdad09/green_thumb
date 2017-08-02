Rails.application.routes.draw do
  devise_for :caregivers, path: 'caregivers'
  devise_for :users, path: 'users'
  
  # root to: 'plants#index'
  
  resources :plants
  resources :tasks


end
 