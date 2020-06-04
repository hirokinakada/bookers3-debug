Rails.application.routes.draw do
	root 'home#top'
		get 'home/about'
	resources :books do
	resource :favorites, only: [:create, :destroy]
	resources :book_comments,only: [:create, :destroy]
end

	devise_for :users
	resources :users,only: [:show,:index,:edit,:update]


end
