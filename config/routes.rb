Rails.application.routes.draw do
  devise_for :users, except: %i( index show destroy )
  root  'messages#index'
  resources :groups, except: %i( show destroy )
end
