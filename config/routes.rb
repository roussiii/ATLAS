Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "spaceships", to: "spaceships#index"
  get "spaceships/:id", to: "spaceships#show"
  get "spaceships/new, to: spaceships#new"
  post "spaceships", to: "spaceships#create"
end
