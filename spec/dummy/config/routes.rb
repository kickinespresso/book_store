Rails.application.routes.draw do

  devise_for :users
  mount BookStore::Engine => "/book_store"
end
