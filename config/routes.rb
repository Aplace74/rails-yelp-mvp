Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:create, :new, :index, :show] do
    resources :reviews, only: [:create, :new]
  end
end
