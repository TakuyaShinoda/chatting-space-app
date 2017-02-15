Rails.application.routes.draw do
  devise_for :users, only: %i( session registration )
  root  'groups#index'
  resources :groups, except: %i( show destroy ) do
    resources :messages, only: %i( index create )
  end
end
