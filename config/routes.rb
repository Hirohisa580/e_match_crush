Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#index"
  resources :profiles
  resources :dms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
  resources :boards
  get 'boards/:id', to: 'boards#checked'
end
