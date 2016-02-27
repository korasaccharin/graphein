Rails.application.routes.draw do
  resources :visualizations

  root 'visualizations#index'
end
