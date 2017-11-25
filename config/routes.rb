Rails.application.routes.draw do
  get 'users/show'

  root 'stats#index'
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :risks do
    collection do
      post :export
    end
    collection do
      get :download
    end
    collection do
      post :import
    end
  end
  resources :users

end
