Rails.application.routes.draw do
  root to: redirect("/posts")
  resources :posts, only:[:index, :create]
  resources :users, only:[:index, :create]
  get "/registration", controller: "users", action: "new", as: "user_registration"
end

