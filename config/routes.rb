Rails.application.routes.draw do
  devise_for :users
  root to: "shipments#index"


  resources :shippers, only: [:index, :new, :create]
  resources :consignees, only: [:index, :new, :create]
  resources :shipments, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
