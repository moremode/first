Rails.application.routes.draw do

  get '/home', to: 'main#home'
  get '/game', to: 'main#game'
  get '/rules', to: 'main#rules'

end
