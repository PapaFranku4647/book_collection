Rails.application.routes.draw do
  resources :books do
    member do
      get :confirm_delete
    end
  end

  root "books#index"
end
