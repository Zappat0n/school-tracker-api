Rails.application.routes.draw do
  root 'classrooms#index'
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  post '/users', to: 'users#create'
  resources :classrooms

  get '/students', to: 'students#index'
  get '/presentation_areas', to: 'presentation_areas#index'
  get '/presentation_areas/:id', to: 'presentation_areas#show'
  get '/presentation_subareas', to: 'presentation_subareas#index'
  get '/presentation_subareas/:id', to: 'presentation_subareas#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
