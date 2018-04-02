Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, path_names: {
    sign_in: 'login', sign_out: 'logout'
  }

  namespace :admin do
    resources :users, only: [:index, :show]
  end

end
