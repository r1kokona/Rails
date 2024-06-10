Rails.application.routes.draw do
  get "/user", to:"user#index"
  get "/user/:id", to:"user#show"
end
