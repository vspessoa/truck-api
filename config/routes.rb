Rails.application.routes.draw do
  resources :shipments
  resources :vehicles
  resources :truckers

  scope :api, defaults: { format: :json } do 
    resources :vehicles
    resources :truckers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
