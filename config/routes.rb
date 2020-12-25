Rails.application.routes.draw do
  resources :orders
  resources :order_items
  resources :products
  resources :categories
  get 'dashboard/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

  root "home#index"
	

  resources :carts, only: [:show] do 
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
    put 'remove_one:product_id', to: 'carts#removeone', as: :remove_one
 end
end
