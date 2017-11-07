Rails.application.routes.draw do
  get 'user', to: 'user#index'
  get 'user/register', to: 'user#register'
  post 'user', to: 'user#store'
  put 'user/:user_id', to: 'user#update'
  delete 'user/:user_id', to: 'user#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
