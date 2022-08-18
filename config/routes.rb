Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "lists#index"

  # resources :lists, only: [:index, :show, :new, :create] do
  #   resources :bookmarks, only: [:new, :create, :destroy]
  # end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
    end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
