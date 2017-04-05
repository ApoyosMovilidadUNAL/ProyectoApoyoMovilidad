Rails.application.routes.draw do
  resources :requests
  resources :supports
  resources :documents
  resources :professors
  resources :students
  root "static_pages#home"
end
