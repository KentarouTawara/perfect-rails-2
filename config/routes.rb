Rails.application.routes.draw do
  get "/books/:id" => "books#show"
  delete "/books/:id" => "book#destroy"
  resources :publishers
  resource :profile, only: %i{show edit update}
end
