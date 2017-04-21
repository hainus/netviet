Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    authenticated :user do
      root to: "devise/sessions#new"
    end
    unauthenticated do
      root to: 'home#customer'
    end
    get "/sign_out", to: "sessions#destroy"
    get "/forgot_password", to: "sessions#forgot_password"
    put "/reset", to: "sessions#reset_password"
    get "/check_username_exists", to: "sessions#check_username_exists"
  end

  resources :home do
    collection do
      get :download_pdf
    end
  end

  resources :users, controller: :users do
    collection do
      put :update_profile
      get :edit_profile
    end
  end

end
