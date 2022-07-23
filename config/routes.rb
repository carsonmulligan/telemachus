Rails.application.routes.draw do
  get 'consignees/new'
  get 'consignees/create'
  get 'consignees/index'
  get 'consignees/edit'
  get 'consignees/update'
  get 'consignees/destroy'
  get 'shippers/new'
  get 'shippers/create'
  get 'shippers/index'
  get 'shippers/edit'
  get 'shippers/update'
  get 'shippers/destroy'
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
