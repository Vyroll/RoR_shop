Rails.application.routes.draw do

  devise_scope :user do
    root to: 'application#tmp'
    get '/tmp', to: 'application#tmp'
  end

  devise_for :users, :controllers => { users: 'users' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


