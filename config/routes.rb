Rails.application.routes.draw do
   
  devise_for :users
  resources :users, :only => [:show]
   

	resources :team_ds
	resources :team_os


	get 'teams/', :to => 'teams#index'
	get 'teams/:id', :to => 'teams#show'
   root "home#index"


   
end
