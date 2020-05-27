Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get '/store', to: 'store#index'
  get '/', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/berries', to: 'pages#berries'
  get '/team', to: 'pages#team'
  get '/contact', to: 'contact#index', as: 'contact_path'
  post '/contact', to: 'contact#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
