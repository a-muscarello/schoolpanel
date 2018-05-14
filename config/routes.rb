Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root 'pages#main'
  # root 'landing_page#index', page: "home"
  # root "pages#show", page: "home"
  # root "static_pages#home"

  
  # constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
  #   root to: "admins/dashboards#show", as: :admin_root
  # end

  # constraints Clearance::Constraints::SignedIn.new do
  #   root to: "dashboards#show", as: :signed_in_root
  # end

  # constraints Clearance::Constraints::SignedOut.new do
  #   root to: "marketing#index"
  # end


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


