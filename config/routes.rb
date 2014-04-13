Blocitoff::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :to_do_items, only: [:index, :create, :destroy]

end