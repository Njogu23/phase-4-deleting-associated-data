Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create]
  resources :dog_houses, only: [:show, :destroy] do
    resources :reviews, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
