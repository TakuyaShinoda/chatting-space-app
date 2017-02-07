Rails.application.routes.draw do
  devise_for :users, only: %i( session registration )
  root  'messages#index'
  resources :groups, except: %i( show destroy )
end
