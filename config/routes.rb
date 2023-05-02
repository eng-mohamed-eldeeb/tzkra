Rails.application.routes.draw do
  
  devise_for :singers, defaults: { format: :json }   
  devise_for :companies, defaults: { format: :json }
  devise_for :users, defaults: { format: :json }
  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :venues do
        resources :concerts
      end
    end
  end     
end
