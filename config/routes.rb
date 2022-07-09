Rails.application.routes.draw do
  get 'results/index'
  get 'results/hello'

  root to: 'purpose#index'

  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'

  get 'admin', to: 'admin/users#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :purpose, only: [:index]
  resources :about, only: [:index]
  resources :quiz, only: [:index, :show]

  namespace :admin do
    resources :users, :courses, :questions, :answers, :submissions, :results
  end

end
