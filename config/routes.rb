Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "spaceships", to: "spaceships#index"
  get "spaceships/:id", to: "spaceships#show"
  get "spaceships/new, to: spaceships#new"
  post "spaceships", to: "spaceships#create"
end
