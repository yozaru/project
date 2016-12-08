Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'
  root :to => 'kintais#index'
  resources :knows
  match 'search' => 'knows#search', :via => :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
