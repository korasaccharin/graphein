Rails.application.routes.draw do
  devise_for :users
  resources :visualizations
  resources :users

  root 'pages#dashboard'
end
