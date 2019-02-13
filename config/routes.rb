Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
