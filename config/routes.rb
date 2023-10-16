Rails.application.routes.draw do
  # Read
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create"

  # NEW
  get "/movies/new" => "movies#new"

  # READ
  get "/movies" => "movies#index"
  get "movies/:id" => "movies#show"

  #Update 
  patch "/movies/:id" => "movies#update"
  get "movies/:id/edit" => "movies#edit"

  #Delete
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
