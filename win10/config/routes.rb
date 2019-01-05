Rails.application.routes.draw do

  get 'instruments', to:'main#instruments'
  get 'auth', to:'main#auth'
  get 'remove_user', to: 'main#destroy'

  post 'auth', to: 'main#authpost'
  post 'instruments', to: 'main#change_post'

  root 'main#auth'

end
