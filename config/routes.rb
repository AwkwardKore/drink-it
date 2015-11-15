Rails.application.routes.draw do
  resources :styles
  resources :breweries
  resources :styles
  resources :breweries
  resources :beers
end
