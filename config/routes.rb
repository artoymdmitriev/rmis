Rails.application.routes.draw do
  root 'risks#stats'
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :risks do
    collection do
      post :import
      get :export
      post :export
      get :stats
      post :stats
    end
  end
  resources :users

end
