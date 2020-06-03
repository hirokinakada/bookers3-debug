Rails.application.routes.draw do
	root 'home#top'
	resources :books
	get 'home/about'
	devise_for :users
	resources :users,only: [:show,:index,:edit,:update]
end
