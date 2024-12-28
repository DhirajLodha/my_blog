Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/articles" => "articles#index"
  get "articles/show" => "articles#show"
  post "articles/new" => "articles#create"
  get "articles/new" => "articles#new"
  get "/articles/:id" => "articles#show"
  get "articles/:id/edit" => "articles#edit"
  patch "articles/:id/edit" => "articles#update"
  get "articles/:id/delete" => "articles#destroy"
  root "articles#home"
end
