Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vehicles, only: [:index, :show] do
    get 'search', 'checkAvalilability',  on: :collection
  end

  resources :units, only: :show do
    get 'checkAvalilability',  on: :collection
  end
  resources :users, only: [:create, :show, :destroy] do
    resources :units, only: [:update]
    collection do
      post '/login', to: 'users#login'
    end
  end

end
