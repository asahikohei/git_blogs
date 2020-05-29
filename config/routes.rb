Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  
  resources :blogs, only:[:show,:new,:create, :edit, :update]
  resources :users, only:[:show]
end
