Rails.application.routes.draw do
  resources :orders

  devise_for :users
  resources :listings do
    resources :orders
  end

  get 'pages/about'
  get 'pages/contact'
  
  get 'seller' => 'listings#seller'
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'
end
