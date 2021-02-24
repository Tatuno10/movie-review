Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'preferences', to: 'users/registrations#new_preference'
    post 'preferences', to: 'users/registrations#create_preference'
  end
  root "movies#index"
  resources :movies do
    resources :reviews
  end
  resources :tags, only: [:index, :new, :create]
end
