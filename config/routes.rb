Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root 'pages#main'
  root 'home#index'
  
  resources :instructors
  resources :students
  resources :courses
  resources :cohorts
  resources :admins

end


