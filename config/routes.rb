Rails.application.routes.draw do
  resources :posts, only:[:index]
  root to: redirect("/posts")
end
