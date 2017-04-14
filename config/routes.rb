Rails.application.routes.draw do

  devise_for :users
  resources :requests
  resources :supports
  resources :documents
  resources :professors
  resources :students

  devise_scope :user do
    authenticated :user do
      root 'static_pages#home', as: :authenticated_root
      get '/user-requests', to: 'static_pages#requests'
      get '/requests-history', to: 'static_pages#history'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
