Marynet::Application.routes.draw do

	resources :users, only: [:new, :create]
	resources :sessions, only: [:new, :create, :destroy]
  
  root :to => 'pages#home'

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

end
