Rails.application.routes.draw do

  mount BookStore::Engine => "/book_store"
end
