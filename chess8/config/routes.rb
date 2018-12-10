Rails.application.routes.draw do

  get '/home', to: 'main#home'
  get '/game', to: 'main#game'
  get '/rules', to: 'main#rules'
  get '/register', to: 'users#home'
  get '/register/form', to: 'users#form'
  get '/user', to: 'users#user'
  root 'main#home'
end
