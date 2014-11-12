Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'comments/new'

  resources :stories do 
  	resources :votes, only: [:create] # only one route
  	resources :comments, only: [:new, :create] # only one route
  end

  root "stories#index"   # an extra for the homepage
  
end
