Rails.application.routes.draw do
  root to: redirect("/posts")

  # Posts
  resources :posts, only:[:index, :create]

  # Auth
  get "/register", to: "auth#register", as: "user_register"
  post "/register", to: "auth#post_register"
  get "/login", to: "auth#login", as: "user_login"
  post "/login", to: "auth#post_login"
  delete "/logout", to: "auth#logout", as: "user_logout"
end

