Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resource :comments
  end
end
