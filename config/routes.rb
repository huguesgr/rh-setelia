RhSetelia::Application.routes.draw do

  devise_for :admins
  resources :users do
    collection do
      match 'search' => 'users#search', via: [:get, :post], as: :search
    end
    resources :events
  end
  resources :admins
  get 'admins/switch/:id',       to: 'admins#switch'
  resources :skills
  resources :profiles
  resources :categories
  resources :languages
  resources :events
  resources :consultants

  match '/home'   , to: 'static_pages#home',          via: 'get'
  match '/test_exception', to: 'application#test_exception', via: 'get'

  root :to => 'static_pages#home'
  
end
