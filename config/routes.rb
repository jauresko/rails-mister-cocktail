Rails.application.routes.draw do
  resources :cocktails, only: [:create, :show, :index, :new] do
    resources :doses, only: [:new, :create, :destroy, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
