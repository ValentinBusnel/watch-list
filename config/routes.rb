Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :bookmarks, only: [:destroy]
  resources :lists do
    resources :bookmarks, only: [:create, :new]
  end
end
