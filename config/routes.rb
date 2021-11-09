Rails.application.routes.draw do
  root to: 'customers#top'
  get 'about' => 'customers#about'
  get 'info' => 'customers#info'
  get '/search' => 'search#search'

  resource :customers, only: [:show, :edit, :update]
  resources :genres, only: [:index, :show]
  resources :items, only: [:index, :new, :create, :show, :edit, :update] do
    resources :comments, only: [:new, :create, :show, :edit, :update]
  end

  devise_for :customer, controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }


  end
