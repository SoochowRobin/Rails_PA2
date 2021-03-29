Rails.application.routes.draw do
  get 'starts/login'
  get 'starts/signup'
  get 'sign_up', to:'registrations#new'
  post 'sign_up', to:'registrations#create'
  get 'home/index', to:'homes#index'

  delete 'logout', to:'sessions#destroy'

  resources :subjects
  resources :courses
  resources :instructors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'starts#index'
end
