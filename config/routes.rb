Rails.application.routes.draw do

  get 'events/index'

  devise_for :users

  resources :pages
  resources :institutions


  resources :events do
    resources :volunteers, only:[:create, :new, :destroy ]
  end
    
  root to: "pages#index"

end
