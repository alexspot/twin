Rails.application.routes.draw do
  root 'home_page#index'
  resources :jobs
  get '/search', to: 'job#index'

end
