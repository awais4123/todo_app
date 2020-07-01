Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :lists, only: [:index, :destroy, :create] do
    resources :items, only: [:index, :destroy, :create, :update]
  end

  root to: 'lists#index'
end
