Rails.application.routes.draw do

  resources :profiles
  root :to => redirect('/profiles')
  
end
