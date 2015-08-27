BookStore::Engine.routes.draw do
  resources :books
  resources :categories
  resources :authors

end
