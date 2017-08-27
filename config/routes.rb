Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#start'
  get 'home', to: 'static#home'
  get 'about', to: 'static#about'
  get 'why', to: 'static#why'
  get 'herbalab', to: 'static#herbalab'
  get 'herbalab/:id', to: 'static#showherb'
  get 'select', to: 'static#select'

  resources :jars
  resources :orders

end
