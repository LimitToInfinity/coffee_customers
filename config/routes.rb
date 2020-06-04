Rails.application.routes.draw do
  resources :shops, only: [:index, :show, :create]
  resources :coffees, only: [:index, :show, :create]
end
