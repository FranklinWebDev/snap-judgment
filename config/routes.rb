Rails.application.routes.draw do
  # devise_for :users#, path: 'admin/user', class_name: 'Admin::User'

  resources :submissions

  root to: 'purpose#index'

  # post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'
  # get 'login', to: 'sessions#new'

  # get 'admin', to: 'admin/users#index'

  # get 'forgot_password', to: 'forgot_password#index'
  # post 'forgot_password', to: 'forgot_password#forgot_password'
  # get 'edit_password', to: 'forgot_password#edit_password'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :purpose, only: [:index]
  resources :about, only: [:index]
  resources :quiz, only: [:index, :show]
  resources :results

  namespace :admin do
    resources :courses, :questions, :answers
    resources :users
    resources :semesters, only: %i[index edit update]
  end

end
