Rails.application.routes.draw do
  devise_for :employees, path: 'employees'

  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'

  root "employee/destinations#index"
  namespace :employee do 
      resources :destinations, only: [:new, :create, :show]
  end

  get  "/quotes" =>  "quotes#index"
  resources :quotes, only: [:new, :create]

end
