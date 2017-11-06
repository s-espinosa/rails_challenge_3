Rails.application.routes.draw do
  resources :teachers, only: [:show]
  resources :students, only: [:show]
end
