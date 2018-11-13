Rails.application.routes.draw do
  namespace :admin do
    get 'goods/index'
    get 'goods/new'
    get 'goods/create'
    get 'goods/edit'
    get 'goods/update'
    get 'goods/destroy'
  end
  namespace :admin do
    get 'companys/index'
    get 'companys/new'
    get 'companys/create'
    get 'companys/edit'
    get 'companys/update'
    get 'companys/destroy'
  end
  namespace :admin do
    get 'doramas/index'
    get 'doramas/new'
    get 'doramas/create'
    get 'doramas/edit'
    get 'doramas/update'
    get 'doramas/destroy'
  end
  namespace :admin do
    get 'movies/index'
    get 'movies/new'
    get 'movies/create'
    get 'movies/edit'
    get 'movies/update'
    get 'movies/destroy'
  end
  namespace :admin do
    get 'cd_products/new'
    get 'cd_products/create'
    get 'cd_products/edit'
    get 'cd_products/update'
    get 'cd_products/destroy'
  end
  namespace :admin do
    get 'bag_items/edit'
    get 'bag_items/update'
  end
  namespace :admin do
    get 'users/index'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'artists/new'
    get 'artists/create'
    get 'artists/index'
    get 'artists/edit'
    get 'artists/update'
    get 'artists/destroy'
  end
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
