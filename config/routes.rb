Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#start'

  get 'home', to: 'static#home'

  get 'about', to: 'static#about'

  get 'herbalab', to: 'static#herbalab'

  get 'select', to: 'mix#select'

  get 'mix', to: 'mix#mix'

  get 'order', to: 'mix#order'

end
