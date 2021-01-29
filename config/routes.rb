Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root "movies#index"
  resources :movies do
    resources :reviews
  end
  resources :tags, only: [:index, :new, :create]
end
