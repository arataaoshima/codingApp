Rails.application.routes.draw do

  resources :categories
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: 'users/registrations'
  }

  resources :subcontents
  resources :articles
  root to: 'home#top'
  get 'home/about'
  get 'home/index'
  post '/addlist/:article_id' => "home#addlist"
  post 'deletelist/:article_id' => "home#deletelist"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
