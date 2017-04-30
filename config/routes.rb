Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'static_pages#home', as: :authenticated_root
      scope :admin, as: :admin do
        get '/requests-history', to: 'requests#history'
        resources :requests
        resources :students
        resources :supports
      end
      scope :student, as: :student do
        resources :requests, only: [:index, :new, :create, :show, :update]
        resources :students
        resources :supports
      end

      resources :documents
      get '/user-requests', to: 'static_pages#requests'
      get '/requests-history', to: 'static_pages#history'
      get '/professors-by-name', to: 'static_pages#professors_by_name'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end