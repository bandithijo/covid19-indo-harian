Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cases#index'
  resources :cases, only: [:index, :grafik]
  get 'charts', to: 'cases#chart'

  namespace :api do
    namespace :v1 do
      resources :cases, only: [:index, :show]
    end
  end
end
