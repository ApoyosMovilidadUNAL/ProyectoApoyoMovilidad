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
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
end

end
