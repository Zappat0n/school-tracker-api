Rails.application.routes.draw do
  root 'classrooms#index'
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  resources :users, only: %i[create]
  resources :classrooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
