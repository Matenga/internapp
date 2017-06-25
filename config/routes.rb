Rails.application.routes.draw do
  resources :interns
  devise_for :users 
  resources :pages

  #get 'pages/index'
    
  root "pages#index"

  #get 'pages/afterLogin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
