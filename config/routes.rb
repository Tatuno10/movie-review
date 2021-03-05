Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'preferences', to: 'users/registrations#new_preference'
    post 'preferences', to: 'users/registrations#create_preference'
  end
  root "movies#index"
  resources :movies, only: [:index, :show] do
    resources :reviews
    collection do
      get :search
    end
  end
  namespace :admin do
    resources :movies
  end
  resources :tags, only: [:index, :new, :create]
  resources :users 
end
