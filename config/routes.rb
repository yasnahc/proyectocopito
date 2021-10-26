Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    resources :reviews, only: %i[new create]

    collection do
      get 'top'
    end

    member do
      get 'supplier'
    end

  end
  resources :reviews, only: %i[destroy]  
end
