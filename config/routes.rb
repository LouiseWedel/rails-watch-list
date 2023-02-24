Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#   # READ
#   get "lists", to: "lists#index" # As a user, I can see all my movie lists
#   # CREATE
#   get "lists/new", to: "lists#new" # As a user, I can create a movie list
#   post "lists", to: "lists#create"
#   get "lists/:id", to: "lists#show", as: :list # As a user, I can see the details of a movie list
#   # UPDATE
#  # get "lists/:id/edit", to: "lists#edit", as: list # ???
#  # patch "lists/:id", to: "lists#update" #???
#   # DELETE
#   delete "bookmarks/:id", to: "bookmarks#destroy" # WRONG I need to delete a bookmark not a list!
  # As a user, I can destroy a bookmark
  # As a user, I can bookmark a movie inside a movie list ???

  resources :lists, only: [:show, :new, :index, :destroy, :create] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
