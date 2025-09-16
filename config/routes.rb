Rails.application.routes.draw do
  resources :user_books do
    member do
      get :confirm_delete
    end
  end
  resources :users do
    member do
      get :confirm_delete
    end
  end
  resources :books do
    member do
      get :confirm_delete
    end
  end

  root "user_books#index"
end
