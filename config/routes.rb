Rails.application.routes.draw do
  devise_for :users
  root "achievers#index"

  resources :achievers
  resources :habits
  resources :achiever_habits

  resources :book_recommendations
  resources :achiever_book_recommendations

  resources :quotes

end
