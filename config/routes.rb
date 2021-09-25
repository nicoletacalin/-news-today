Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :posts

  resources :admin, only: [:index, :create]
  get '/posts_index', to: 'admin#posts', as: 'admin_posts'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
