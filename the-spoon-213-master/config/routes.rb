Rails.application.routes.draw do
  # get "restaurants" => "restaurants#index"
  # get "restaurants/new" => "restaurants#new", as: :new_restaurant
  # get "restaurants/:id" => "restaurants#show", as: :restaurant
  # post "restaurants" => "restaurants#create"
  # get "restaurants/:id/edit" => "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id" => "restaurants#update"
  # delete "restaurants/:id" => "restaurants#destroy"

  root "restaurants#index"
  resources :restaurants, only: [:show, :new, :create, :edit, :update, :destroy]

end
