# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api' do
    resources :servers do 
      resources :channels
    end 
    resources :channels

    devise_for :users
    root 'static_pages#root'


  end 
  if Rails.env.development?
    #authenticate :user do
      mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
    #end
  end

    post '/graphql', to: 'graphql#execute'
end
