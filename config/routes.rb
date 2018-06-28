Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  root 'home#index'

  namespace :admin do
    get '/', to: 'dashboard#index'
    resource :sign_in, controller: 'sign_in', only: %i[show create]

    resources :admins
  end
end
