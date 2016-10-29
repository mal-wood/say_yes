Rails.application.routes.draw do
  devise_for :users

   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :snippets, only:[:index]

  resources :users do 
  	resources :snippets
  	resources :friendships
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'snippets#index'
end
