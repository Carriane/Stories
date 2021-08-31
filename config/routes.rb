Rails.application.routes.draw do
  root 'pages#home'
  get '/about' => 'pages#about'
  get '/thanks' => 'pages#thanks'
  resources :signups
end
