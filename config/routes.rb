Rails.application.routes.draw do

	#Casein routes
	namespace :casein do
		resources :news
		resources :information
	end
  mount Forem::Engine, :at => '/forums'

  get 'news', to: 'home#news', as: :news
  get 'information', to: 'home#information', as: :information
 

  devise_for :users
  root 'home#index'

end
