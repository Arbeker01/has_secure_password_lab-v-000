Rails.application.routes.draw do
  get 'welcome/index'

  resources :users
  resources :sessions

end
