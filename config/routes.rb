Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: [:new, :create, :show ] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
