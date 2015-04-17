Rails.application.routes.draw do
  resources :books, except: :update
  resources :finished_books
  resources :genres
end