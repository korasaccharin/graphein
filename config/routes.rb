Rails.application.routes.draw do
  devise_for :users
  resources :visualizations

  root 'visualizations#index'
end
