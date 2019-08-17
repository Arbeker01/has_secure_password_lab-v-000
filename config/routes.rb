Rails.application.routes.draw do
  resources :users
  resources :sessions

  
 root 'welcome#home'
end
