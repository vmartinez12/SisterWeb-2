Rails.application.routes.draw do

  get 'staticpages/home'

  get 'staticpages/about'

  get 'staticpages/links'

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
