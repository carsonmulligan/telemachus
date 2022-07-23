Rails.application.routes.draw do
  get 'shipments/new'
  get 'shipments/create'
  get 'shipments/index'
  get 'shipments/edit'
  get 'shipments/update'
  get 'shipments/destroy'
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
