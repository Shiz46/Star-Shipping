Rails.application.routes.draw do
  devise_for :employees, path: 'employees'

  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  get "/employee/destinations", to:  "employee/destinations#index"
  namespace :employee do 
      resources :destinations, only: [:new, :create, :edit,  :update, :destroy, :show]
      get 'about', to: 'destinations#about'
  end

  get  "/quotes", to:  "quotes#index"
  resources :quotes, only: [:new, :create, :edit,  :update, :destroy]


  resources :users, only: :show
  resources :employees, only: :show

end
