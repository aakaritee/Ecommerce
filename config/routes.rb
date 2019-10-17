Rails.application.routes.draw do
  #get 'store/index'
  devise_for :users, controllers: {
  	registration: 'registrations'
  }
  root 'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
