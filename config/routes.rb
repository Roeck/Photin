Rails.application.routes.draw do
  devise_for :accounts,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
    controllers: {registrations: 'registrations'}

    resources :users, only: [:show]

    resources :posts, only: [:index, :show, :create] do   
      resources :photos, only: [:create]

    root to: "public#home"
end
