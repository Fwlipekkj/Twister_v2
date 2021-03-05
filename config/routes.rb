Rails.application.routes.draw do
  root to: redirect("/posts")
  resources :posts, only:[:index, :create]
  get "/register", to: "session#register", as: "user_register"
  post "/register", to: "session#make_register"
  get "/login", to: "session#login", as: "user_login"
  post "/login", to: "session#make_login"
  delete "/logout", to: "session#logout", as: "user_logout"
end

