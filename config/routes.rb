Rails.application.routes.draw do
  # Read
  root "movies#index", as: :movies # gives us movies_url (returns string containing URL) & movies_path (which returns path string); index is typically plural

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create"

  # NEW
  get "/movies/new" => "movies#new", as: :new_movie #new_movie_url & new_movie_path

  # READ
  get "/movies" => "movies#index"
  get "movies/:id" => "movies#show", as: :movie #show page is typically singular; movie_path() --> expects an argument to populate :id segment

  #Update 
  patch "/movies/:id" => "movies#update"
  get "movies/:id/edit" => "movies#edit", as: :edit_movie # edit_movie_path()  --> expects an argument to populate :id segment

  #Delete
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
