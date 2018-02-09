Rails.application.routes.draw do
  get 'welcome/index'

  resources :packjobs

  root 'welcome#index'
end
