Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'cd_products#index'
  get '/guide' => 'users#guide'
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
  get '/era_search' => 'cd_products#era_search'
  get '/era_search/list' => 'cd_products#era_search_list'
  get '/cd_products/:id' => 'cd_products#show', as: 'cd_product'
  get '/search/list' => 'cd_products#list', as: :search_list
  get '/doramas/title_search/:id/:dorama_name' => "doramas#title_search", as: :dorama_title_search
  get '/movies/title_search/:id/:movie_name' => "movies#title_search", as: :movie_title_search
  get '/cms/goods_search' => "cms#goods_search", as: :cm_goods_search
  get '/cms/comany_search' => "cms#company_search", as: :cm_company_search
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

  devise_scope :user do
 post 'users/sign_up/confirm' => 'users/registrations#confirm'
 post 'users/sign_up/complete' => 'users/registrations#complete'
end

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
  resources :users,:except =>[:new,:create,:destroy]

end
