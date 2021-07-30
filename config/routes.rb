Rails.application.routes.draw do
  resources :dogs
  root to: 'pages#home'
  devise_for :users

  resources :recipes do
    resources :comments
  end

  get 'pages/home'
  get 'dogs/index'
  get 'recipes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
