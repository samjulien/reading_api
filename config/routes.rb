Rails.application.routes.draw do
  namespace :api do
    resources :books, except: :update
    resources :finished_books
    resources :genres
  end
end