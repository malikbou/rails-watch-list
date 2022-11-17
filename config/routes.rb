Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get    "lists",          to: "lists#index"

  # Read one - The `show` route needs to be *after* `new` route.
  get    "lists/:id",      to: "lists#show", as: :list

  # NEW
  # Create
  # get    "lists/new",      to: "lists#new", as: :new_list
  # post   "lists",          to: "lists#create"
end
