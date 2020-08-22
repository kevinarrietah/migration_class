require 'sidekiq/web'

Rails.application.routes.draw do
 
  get 'products/index'
  get 'products/show'
  mount PgHero::Engine, at:'pghero'
  mount Sidekiq::Web, at:'sidekiq'

  resources :reports, only: [:index,:create]
  resources :products, only: [:index,:show]
  
end
