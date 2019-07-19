Rails.application.routes.draw do
	resources :users, only: [:index, :create, :show]
	resources :conversations, only: [:index, :create, :show]
  	resources :messages, only: [:index, :create]
  	post "/login", to: "auth#login"
  	get "/auto_login", to: "auth#auto_login"
  	mount ActionCable.server => '/cable'
end
