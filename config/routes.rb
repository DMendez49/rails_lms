Rails.application.routes.draw do
  
  resources :users
  resources :courses do
    resources :enrollments, only: [:index, :new, :create, :destroy]
  end
end
