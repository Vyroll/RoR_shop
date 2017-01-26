Rails.application.routes.draw do

  devise_scope :user do
    root to: 'application#tmp'
    get '/tmp', to: 'application#tmp'
  end

  resources :products
  resources :order_elements
  
  devise_scope :orders do
    get 'orders/show', to: 'orders#show', as: :order_show
    get 'orders/edit', to: 'orders#edit', as: :order_edit
  end



  namespace :administrator do
    get 'list_users'
  end


  devise_for :users, :controllers => { users: 'users' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


