Rails.application.routes.draw do
  devise_for :users,  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
  devise_scope :users do 
    match '/users/sign_in', to: "devise/sessions#new", via: 'get'
    match '/users/sign_in', to: "devise/sessions#create", via: 'post'
    match '/users/sign_out', to: "devise/sessions#destroy", via: 'get'
  end
  root 'lectures#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lectures
  resources :attendances
  resources :students
  resources :teachers
end
