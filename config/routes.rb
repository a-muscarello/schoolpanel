Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root 'pages#main'
  # root 'landing_page#index', page: "home"
  # root "pages#show", page: "home"
  # root "static_pages#home"

  root "homes#homepage"

  # match 'path', :to => 'homes#homepage', :via => [:get, :post]

  resources :instructors
  resources :students
  resources :courses
  resources :cohorts
  resources :admins
  resources :homes
  # resources :landing_page
end


