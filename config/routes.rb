Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tags, only: [:index, :create, :destroy, :update]
      resources :products, only: [:index, :create, :destroy, :update]
      resources :categories, only: [:index, :create, :destroy, :update]

    end
  end
end
