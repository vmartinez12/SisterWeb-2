Rails.application.routes.draw do

  get 'staticpages/home'

  get 'staticpages/about'

  get 'staticpages/links'

  resource :calendar, only: [:show], controller: :calendar
  #root to: "calendar#show"

  resources :profiles
  root :to => redirect('/staticpages/home')
  
end
