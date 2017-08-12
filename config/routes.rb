Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#start'

  get 'home', to: 'static#home'

  get 'about', to: 'static#about'

  get 'herbalab', to: 'mix#herbalab'

  get 'herbalab/:id', to: 'mix#showherb'

  get 'select', to: 'mix#select'

  get 'mix/:id', to: 'mix#mix'

  post 'createjar', to: 'mix#createjar'

  get 'order', to: 'mix#order'

end
