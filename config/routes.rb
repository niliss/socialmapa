Rails.application.routes.draw do

  devise_for :users
  resources :pages
  resources :institutions

  root to: "pages#index"

end
