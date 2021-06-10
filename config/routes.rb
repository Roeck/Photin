Rails.application.routes.draw do
  root to: "public#home"

  devise_for :accounts,
    path: '',
    path_names: {sign_in: 'sign_in', sign_out: 'logout', edit: 'profile', sign_up: 'sign_up'}

    resources :users, only: [:show]

    resources :posts, only: [:index, :show, :create] do   
      resources :photos, only: [:create]
    end
end
