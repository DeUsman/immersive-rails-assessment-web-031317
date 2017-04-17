Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]

  get '/guests/new', to: 'guests#new', as: 'new_guest'
  get '/guests/:id', to: 'guests#show', as: 'show_guest'
  post '/guests', to: 'guests#create'
  get '/guests/:id', to: 'guests#show'
end
