Rails.application.routes.draw do
  get 'buyer/page'
  # resources :comments
  resources :buyers
  resources :sellers do
        resources :reviews , only: [:create, :new]
  end
  resources :cars
  resources :profiles
  root 'home#page'
  devise_for :users

  post '/payment', to: "buyer#payment", as: "payment"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
