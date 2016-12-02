Rails.application.routes.draw do
  resources :knows
  match 'search' => 'knows#search', :via => :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
