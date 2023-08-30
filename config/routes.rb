Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :publications
  resources :comments, only: [:create]

  post '/new_user_reaction', to: 'reactions#new_user_reaction', as: 'new_user_reaction'
  
  # Defines the root path route ("/")
  root "publications#index"
end
