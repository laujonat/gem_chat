# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api' do
    resources :servers do 
      resources :channels
    end 
    resources :channels

    root 'static_pages#root'


  end 
   devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               sign_up: 'signup',
             },
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  if Rails.env.development?
    # authenticate :user do
      mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
    # end
  end

    post '/graphql', to: 'graphql#execute'
end
