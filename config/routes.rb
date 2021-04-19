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
  get '/classrooms/:id/scores', to: 'events#index'
  get '/students/:id/scores', to: 'events#show'
end
