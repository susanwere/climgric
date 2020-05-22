Rails.application.routes.draw do
  get '/', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/berries', to: 'pages#berries'
  get '/team', to: 'pages#team'
  get '/contact', to: 'contact#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
