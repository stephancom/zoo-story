Rails.application.routes.draw do
  resources :zoos
  root to: 'visitors#index'
end
