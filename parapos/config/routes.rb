Rails.application.routes.draw do
  get 'packjobs/index'

  resources :packjobs

  root 'packjobs#index'
end
