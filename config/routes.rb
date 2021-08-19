Rails.application.routes.draw do
  root to: 'wishlists#index'
  resources :wishlists
end
