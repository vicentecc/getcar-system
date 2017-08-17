Rails.application.routes.draw do
  devise_for :users
  resources :clients, type: 'Client'
  resources :administrators, type: 'Administrator'
  resources :vehicles
  resources :maintenances
  
	root 'home#index'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
