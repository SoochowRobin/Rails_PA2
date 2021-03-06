Rails.application.routes.draw do
  get 'searchs/searchR'
  get 'searchs/displayR'
  get 'starts/login'
  get 'starts/signup'
  get 'sign_up', to:'registrations#new'
  post 'sign_up', to:'registrations#create'
  get 'home/index', to:'homes#index'

  delete 'logout', to:'sessions#destroy'

  get 'sign_in', to:'sessions#new'
  post 'sign_in', to:'sessions#create'

  get '/home/search', to:'searchs#index'
  post '/home/search', to:'searchs#index'

  resources :subjects
  resources :courses
  resources :instructors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'starts#index'
end
