Rails.application.routes.draw do
  resources :dogs
  root to: 'pages#home'
  devise_for :users

  resources :recipes


    get 'pages/home'
    get 'recipes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
