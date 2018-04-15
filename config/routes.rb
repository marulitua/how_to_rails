Rails.application.routes.draw do
  resources :users do
    resources :experiences
  end
  resources :urls, only: [:create, :show, :index, :destroy]
end
