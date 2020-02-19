Rails.application.routes.draw do
  resources :gardens, only: [ :show ] do
    resources :plants, only: [ :new, :create ]
  end

  root to: 'gardens#index'

end
