Rails.application.routes.draw do
  # # devise_for :users, path: '', path_names: {sign_in: "login", sign_out: "logout"},
  #                                     controllers: {omniauth_callbacks: "authentications", registrations: "registrations", sessions: "sessions"}
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
