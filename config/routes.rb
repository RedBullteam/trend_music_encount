Rails.application.routes.draw do
  resources :cms, :only => [:index,:trend,:search]
  resources :cd_products, :only =>[:index,:show,:era_search,:era_search_list,:search,:list]
  devise_for :admins
  resources :goods, :only =>[:new,:create,:index,:edite,:update,:destroy]
  resources :companeys, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :doramas, :only => [:new,:create,:index,:edit,:update,:destroy,:feature,:title_search]
  resources :movies, :only =>[:new,:create,:index,:edit,:update,:destroy,:feature,:title_search]
  namespace :admins do
    resource :artist, only: [:new,:create,:index,:edit,:update,:destroy]
  end
  resources :admins
  resources :bag_items, :only =>[:index,:edit,:update,:destroy]
  resources :shopping_bags, :only =>[:new,:create,:index,:show,:destroy]
  resources :cart_item, :only =>[:add,:destroy,:update]
  resources :shopping_carts, :only => [:new,:create,:index,:show,:destroy]
  resources :address_lines, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :favorites, :only =>[:create,:destroy,:index]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
