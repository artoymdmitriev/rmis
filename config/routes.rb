Rails.application.routes.draw do
  root 'panel#index'
  devise_for :users, :controllers => { :sessions => "sessions", :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :risks

end
