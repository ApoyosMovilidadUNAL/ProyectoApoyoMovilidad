Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'static_pages#home', as: :authenticated_root
      get '/set-student-document', to: "static_pages#set_document", as: :set_document
      post '/create-student', to: "students#create_student"
      scope :admin, as: :admin do
        get '/requests-history', to: 'requests#history'
        get '/statistics', to: 'requests#statistics'
        resources :requests
        resources :students
        resources :supports
      end
      scope :student, as: :student do
        resources :requests, only: [:index, :new, :create, :show, :update]
        resources :students
        resources :supports
        resources :documents
      end

      #resources :documents
      get '/user-requests', to: 'static_pages#requests'
      get '/requests-history', to: 'static_pages#history'
      get '/professors-by-name', to: 'static_pages#professors_by_name'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end