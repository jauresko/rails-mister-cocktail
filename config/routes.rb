Rails.application.routes.draw do
  resources :cocktail, only: [:create, :show, :index, :new] do
    resources :dose, only: [:new, :create, :destroy, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
