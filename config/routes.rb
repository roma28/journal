Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/home', to: 'static_pages#home', via: 'get'
  match '/signup', to: 'users#new', via: 'get'

end
