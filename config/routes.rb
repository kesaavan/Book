Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "laptops#index"

  get "journals/index", to: "journals#index"
  get "journals/new_journal", to: "journals#new"
  get "journals/show_journal/:id", to: "journals#show"
  post "/journals/journals/create", to: "journals#create"


  get "/laptops/index", to: "laptops#index"
  get "/laptops/new", to: "laptops#new"
  get "/laptops/show_laptop/:id", to: "laptops#show"
  post "/create_laptop", to: "laptops#create"
  get "/laptops/edit_laptop/:id", to: "laptops#edit"
  patch "/laptops/update_laptop/:id", to: "laptops#update"
  get "/laptops/delete_laptop/:id", to: "laptops#delete"

 get "/users/index", to: "user#index"
  get "/users/new", to: "user#new"
  get "/users/show_user/:id", to: "user#show"
  post "/create_user", to: "user#create"
  get "/users/edit_user/:id", to: "user#edit"
  patch "/users/update_user/:id", to: "user#update"
  get "/users/delete_user/:id", to: "user#delete"



end
