Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get "account", to: "pages#account"

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places, only: [:index, :show, :new, :create] do
    resources :visits, only: [:create]
    resources :wishlist_items, only: [:create]
    resources :questions, only: [:new, :create]
  end
  resources :visits, only: [:index] do
    resources :reviews, only: [:new, :create] 
  end
  resources :wishlist_items, only: [:index, :destroy]
  resources :questions, only: [:index ] do
    resources :answers, only: [:new, :create]
  end
end
