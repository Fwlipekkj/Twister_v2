Rails.application.routes.draw do
  root to: redirect("/posts")

  # Posts
  resources :posts, only:[:index, :create]

  # Users
  resources :users, only:[:index, :create]
  get "/registration", controller: "users", action: "new", as: "user_registration"
end

