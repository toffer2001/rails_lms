Rails.application.routes.draw do
  root 'courses#index'

  resources :users # except: [:edit, :update]
  resources :courses do
    resources :enrollments, only: [:index, :new, :create, :destroy]
end
