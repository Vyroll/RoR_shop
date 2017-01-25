Rails.application.routes.draw do

  devise_scope :user do
    root to: 'application#tmp'
    get '/tmp', to: 'application#tmp'
  end

  resources :products
  namespace :products do

  end


  namespace :administrator do
    get 'list_users'
  end


  devise_for :users, :controllers => { users: 'users' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


