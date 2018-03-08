Rails.application.routes.draw do
   
  devise_for :users
  resources :users, :only => [:show]
   

	resources :team_ds
	resources :team_os
	
   root "home#index"


   
end
