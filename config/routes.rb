Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'cd_products#index'
 namespace :admin do
    resources :goods, :only =>[:new,:create,:index,:edite,:update,:destroy]
    resources :companeys, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :doramas, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :movies, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :companeys, :only =>[:new,:create,:edit,:update,:destroy]
    resources :companeys, :only =>[:edit,:update]
    resources :users, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :artists, :only =>[:new,:create,:index,:edit,:update,:destroy]
  end
  resources :cms, :only => [:index,:trend,:search]
  resources :cd_products, :only =>[:index,:show,:era_search,:era_search_list,:search,:list]
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    password: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }

  resources :goods, :only =>[:new,:create,:index,:edite,:update,:destroy]
  resources :companeys, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :doramas, :only => [:new,:create,:index,:edit,:update,:destroy,:feature,:title_search]
  resources :movies, :only =>[:new,:create,:index,:edit,:update,:destroy,:feature,:title_search]
  resources :admins
  resources :bag_items, :only =>[:index,:edit,:update,:destroy]
  resources :shopping_bags, :only =>[:new,:create,:index,:show,:destroy]
  resources :cart_item, :only =>[:add,:destroy,:update]
  resources :shopping_carts, :only => [:new,:create,:index,:show,:destroy]
  resources :address_lines, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :favorites, :only =>[:create,:destroy,:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/resignnation'
  get 'users/complete'
  resources :users,:except =>[:new,:create,]

end
