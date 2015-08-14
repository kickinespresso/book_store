BookStore::Engine.routes.draw do
  resources :books
  resources :categories
  resources :authors

  namespace :admin do
    get '/', to: 'books#index'
    resources :books
    resources :categories
    resources :authors
  end

end
