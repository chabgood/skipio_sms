Rails.application.routes.draw do
  root 'home#index'
  resources :contacts, :messages
end
