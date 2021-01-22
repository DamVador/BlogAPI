Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :articles
  end
  
  devise_for :admins,
  defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'api/login',
    sign_out: 'api/logout',
    registration: 'api/signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
end
