Rails.application.routes.draw do

  get 'email_address/addEmail'

  get 'email_address_controller/addEmail'

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts
  get 'welcome/index'
  root 'posts#index'
  post '/newemail', to: 'email_address#addEmail'
  get '/newemail', to: 'email_address#addEmail'
  #get '/blogposts', to: 'posts#listed'
  get "*path", to: redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
