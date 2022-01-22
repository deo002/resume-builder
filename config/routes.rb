Rails.application.routes.draw do
  root   'home#index'
  get    'signup'   => 'registrations#new'
  post   'signup'   => 'registrations#create'
  get    'edit'     => 'home#edit'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  delete 'logout'   => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
end