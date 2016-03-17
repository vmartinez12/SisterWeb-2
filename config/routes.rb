Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  resources :posts
  get 'staticpages/home'

  get 'staticpages/about'

  get 'staticpages/links'

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
