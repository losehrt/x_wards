Rails.application.routes.draw do
  resources :pcrs
  get 'landing/index'
  resources :pcrs do
    collection do
      post :api
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing#index"
end
