Rails.application.routes.draw do
  devise_for :singers, defaults: { format: :json }   
  devise_for :companies, defaults: { format: :json }
  devise_for :users, defaults: { format: :json }        
end
