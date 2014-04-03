Blocitoff::Application.routes.draw do
  # get "to_do_items/index"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :to_do_items, only: [:index]

end