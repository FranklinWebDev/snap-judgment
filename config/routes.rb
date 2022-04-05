Rails.application.routes.draw do

  root to: "purpose#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :purpose, only: [:index]
  resources :about, only: [:index]
  resources :quiz, only: [:index]

  namespace :admin do
    resources :users, :courses, :questions
  end

end
