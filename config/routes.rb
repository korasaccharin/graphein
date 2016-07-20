Rails.application.routes.draw do
  devise_for :users
  resources :visualizations
  resources :users

  root 'visualizations#index'
end
