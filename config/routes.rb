Rails.application.routes.draw do
  resources :pathfinders
  resources :units
  resources :counselors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
