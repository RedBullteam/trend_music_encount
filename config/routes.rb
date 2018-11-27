Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'cd_products#index'
  get '/guide' => 'users#guide'
 namespace :admin do
    resources :commodities, :only =>[:new,:create,:index,:edite,:update,:destroy]
    resources :companeys, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :doramas, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :movies, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :companeys, :only =>[:new,:create,:edit,:update,:destroy]
    resources :companeys, :only =>[:edit,:update]
    resources :users, :only =>[:new,:create,:index,:edit,:update,:destroy]
    resources :artists, :only =>[:new,:create,:index,:edit,:update,:destroy]
  end
   get '/trend' =>'cms#trend'
 resources :cms, :only => [:index,:search]
  get '/era_search' => 'cd_products#era_search'
  get '/release_era_tag/:id' => 'release_era_tags#show', as: 'release_era_tag'
  get '/cd_products/:id' => 'cd_products#show'
  get '/search/list' => 'cd_products#list', as: :search_list
  get '/doramas/title_search/:id/:dorama_name' => "doramas#title_search", as: :dorama_title_search
  get '/doramas/feature' => 'doramas#feature', as: 'doramas_feature'
  get '/movies/title_search/:id/:movie_name' => "movies#title_search", as: :movie_title_search
  get '/movies/feature' => "movies#feature", as: :movie_feature
  get '/cms/commodity_search' => "cms#commodity_search", as: :cm_commodity_search
  get '/cms/company_search' => "cms#company_search", as: :cm_company_search
  get '/cd_products/search/artists_search_form' => "cd_products#artists_search_form", as: :artists_search_form
  get '/cd_products/search/songs_search_form' => "cd_products#songs_search_form", as: :songs_search_form
  get '/cd_products/search/artists_search' => "cd_products#artists_search", as: :artists_search
  get '/cd_products/search/songs_search' => "cd_products#songs_search", as: :songs_search
  resources :cd_products do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
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

  resources :commodities, :only =>[:new,:create,:index,:edite,:update,:destroy]
  resources :companeys, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :doramas, :only => [:new,:create,:index,:edit,:update,:destroy]
  resources :movies, :only =>[:new,:create,:index,:edit,:update,:destroy]
  resources :admins
  resources :bag_items, :only =>[:index,:edit,:update,:destroy]
  resources :shopping_bags, :only =>[:new,:create,:index,:show,:destroy]
  resources :cart_item, :only =>[:add,:destroy,:update]
  resources :shopping_carts, :only => [:new,:create,:index,:show,:destroy]
  resources :address_lines, :only =>[:new,:create,:index,:edit,:update,:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/resignnation'
  get 'users/complete'
  resources :users,:except =>[:new,:create,:destroy]

end
