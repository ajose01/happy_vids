Rails.application.routes.draw do

  #root 'dashboards#index'

  resources :users,   only: [:index, :show]
  resources :videos,  only: [:index, :show]

end
