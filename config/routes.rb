Rails.application.routes.draw do
  devise_for :users, only: %i( session registration )
  resources :groups, except: %i( show destroy ) do
  	resources :messages, only: %i( index new create )
  end
  root  'groups#index'
end
