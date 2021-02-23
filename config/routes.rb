Rails.application.routes.draw do
  get 'cadastro/index'
  resources :posts, only:[:index, :create]
  root to: redirect("/posts")
end
