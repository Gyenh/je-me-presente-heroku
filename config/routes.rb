Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/', to: 'static_pages#home', as: 'home'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  get '/about/me', to: 'static_pages#about_me', as: 'aboutme'
  get '/about/us', to: 'static_pages#about_us', as: 'aboutus'


  get '/users/new'
  get '/users/:id', to: 'users#show'
  post '/', to: 'users#user_post'

  get '/users', to: 'users#errorpage'

end
