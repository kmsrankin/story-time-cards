Rails.application.routes.draw do
  root 'stories#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cards, only: [:index, :show, :new, :create]
  resources :stories, only: [:index, :show, :new, :create] do
    resources :narrations, only: [:create]
  end
end
