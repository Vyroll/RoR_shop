Rails.application.routes.draw do
  #root to: 'users#test'

  devise_for :users, :controllers => { users: 'users' }

  devise_scope :user do

  end






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
