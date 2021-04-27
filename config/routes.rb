Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  resources :users, only: [:create]
  resources :classrooms
  resources :students, only: [:index, :show]
  resources :presentation_areas, only: [:index, :show]
  resources :presentation_subareas, only: [:index, :show]
  resources :events, only: [:create, :update, :show]
end
