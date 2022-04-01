Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :users, :courses, :questions
  end
  
  # Defines the root path route ("/")
  # root "users#index"
end
