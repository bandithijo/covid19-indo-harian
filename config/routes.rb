Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cases#index'
  resources :cases, only: [:index, :grafik]
  get 'grafik', to: 'cases#chart'
  get 'zona-resiko', to: 'scores#index'
end
