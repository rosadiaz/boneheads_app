Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

  root({ to: 'calendars#show' })
end
