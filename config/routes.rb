Rails.application.routes.draw do
  root to: "static_pages#index"

  resources :subscribers, only: [:index, :new]
  resources :events, only: [:index, :new]
end
