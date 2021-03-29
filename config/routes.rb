Rails.application.routes.draw do
  resources :subjects
  resources :courses
  resources :instructors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'homes#index'
end
