Rails.application.routes.draw do
  resources :teachers
  resources :students
  resources :people
  resources :groups
  resources :careers
  resources :faculties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
