Rails.application.routes.draw do

  devise_scope :administrator do
    get 'administrator/list_users'
  end



  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  devise_for :users, :controllers => { users: 'users' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
