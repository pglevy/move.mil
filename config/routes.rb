Rails.application.routes.draw do
  resources :entitlements, only: :index
  resources :faqs, only: :index
  resources :tutorials, only: [:index, :show]

  get '/customer-service', to: 'customer_service#index', as: 'customer_service'
  get '/service-specific-information', to: 'service_specific_information#index', as: 'service_specific_information'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
