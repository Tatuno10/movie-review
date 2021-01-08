Rails.application.routes.draw do
  devise_for :users
  get 'movies/index'
  root "movies#index"
end
