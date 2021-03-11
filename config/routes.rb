Rails.application.routes.draw do
  root to: redirect("/posts")
  resources :posts, only:[:index, :create]
  get "/register", to: "session#register", as: "user_register"
  post "/register", to: "session#make_register"
  get "/login", to: "session#login", as: "user_login"
  post "/login", to: "session#make_login"
  delete "/logout", to: "session#logout", as: "user_logout"
  get "/forgot", to: "password#forgot", as: "forgot_password"
  post "/recovery", to: "password#recovery", as: "recovery_password"
  get "/reset", to: "password#reset", as: "reset_password"
  post "/reset", to: "password#make_reset"
  get "/recovery", to: "password#recovery_sent", as: "recovery_sent"
end

