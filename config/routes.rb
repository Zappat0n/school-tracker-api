Rails.application.routes.draw do
  root 'classrooms#index'
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  post '/users', to: 'users#create'
  resources :classrooms

  get '/students', to: 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
