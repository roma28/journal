Rails.application.routes.draw do
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/home', to: 'static_pages#home', via: 'get'
end
