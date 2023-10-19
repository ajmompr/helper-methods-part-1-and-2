Rails.application.routes.draw do

  # Create
  post "/directors" => "directors#create", as: :directors

  # New
  get "/movies/new" => "directors#new", as: :new_director

  # Read
  get "/directors" => "directors#index"
  get "/directors/:id" => "directors#show", as: :director

  # Update
  patch "/directors/:id" => "movies#update"
  get "/directors/:id/edit" => "movies#edit", as: :edit_director

  # delete
  delete "/directors/:id" => "movies#destroy"

  # Read
  root "movies#index"  
  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create", as: :movies # gives us movies_url (returns string containing URL) & movies_path (which returns path string); index is typically plural


  # NEW
  get "/movies/new" => "movies#new", as: :new_movie #new_movie_url & new_movie_path

  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: :movie #show page is typically singular; movie_path() --> expects an argument to populate :id segment

  #Update 
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit", as: :edit_movie # edit_movie_path()  --> expects an argument to populate :id segment

  #Delete
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
