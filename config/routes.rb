Rails.application.routes.draw do
  resources :buses
  resources :lines
  resources :stops, :except => [:index, :show]
end
