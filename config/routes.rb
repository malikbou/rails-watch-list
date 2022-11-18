Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  get    "lists",          to: "lists#index"

  # NEW
  # Create
  get    "lists/new",      to: "lists#new", as: :new_list
  post   "lists",          to: "lists#create"

  # Read one - The `show` route needs to be *after* `new` route.
  get    "lists/:id",      to: "lists#show", as: :list

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
