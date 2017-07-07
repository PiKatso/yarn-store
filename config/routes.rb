Rails.application.routes.draw do
  root to: 'users#index'

  # resources :users do
  #   resources :products
  # end

  resources :products do
    resources :reviews
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

end
