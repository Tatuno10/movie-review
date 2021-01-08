Rails.application.routes.draw do
  get 'movies/index'
  root "movies#index"
end
