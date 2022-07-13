Rails.application.routes.draw do
  resources :submissions
  

  root to: 'purpose#index'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'

  get 'admin', to: 'admin#users#index'

  get 'forgot_password', to: 'forgot_password#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :purpose, only: [:index]
  resources :about, only: [:index]
  resources :quiz, only: [:index, :show]
  resources :results

  namespace :admin do
    resources :users, :courses, :questions, :answers
  end

end
