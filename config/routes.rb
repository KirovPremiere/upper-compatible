Rails.application.routes.draw do
  root to: 'customers#top'
  get 'about' => 'customers#about'
  get 'info' => 'customers#info'
  get 'search' => 'searches#search'

  resource :customers, only: [:show, :edit, :update]
  resources :big_fours, only: [:show]
  resources :genres, only: [:index, :show]
  resources :items, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: [:new, :create, :edit, :update] do
      resource :favorites, only: [:create, :destroy]
    end
  end

  devise_for :customer, controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }


  end
