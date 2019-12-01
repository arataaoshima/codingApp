Rails.application.routes.draw do

  resources :categories
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
    registrations: 'users/registrations'
  }

  post "/unsubscribe" =>"charges#unsubscribe"
  resources :charges
  resources :subcontents
  resources :articles
  root to: 'home#top'
  get 'home/about'
  get 'home/index'
  post '/addlist/:article_id' => "home#addlist"
  post 'deletelist/:article_id' => "home#deletelist"
  get 'all_users' => "home#all_users"
  get 'edit_user/:id' => "home#edit_user"
  post 'edit_user/:id' => "home#update_user"
  post 'delete/users/:id' => "home#delete_user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
