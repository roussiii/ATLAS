Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spaceships
<<<<<<< HEAD
  resources :bookings, except: [:index]
=======
  resources :destinations
>>>>>>> 7a4b306ce848529b870032cae168a5f73e5d3555
end
