Rails.application.routes.draw do
  resources :users, param: :_username
  resources :authentications, only: [:create]
  resources :classrooms
  resources :students, only: [:index, :show]
  resources :presentation_areas, only: [:index, :show]
  resources :presentation_subareas, only: [:index, :show]
  resources :events, only: [:create, :update, :show]
end
