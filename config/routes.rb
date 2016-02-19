Rails.application.routes.draw do
  resources :animals
  resources :zoos do
    resources :animals, only: [:index, :create]  
  end
  root to: 'visitors#index'
end
