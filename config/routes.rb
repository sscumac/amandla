Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "pages", to: "pages#account"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :show, :new, :create]
  end
end
