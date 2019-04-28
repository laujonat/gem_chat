# frozen_string_literal: true

Rails.application.routes.draw do
  get 'channels/index'

  get 'channels/new'

  get 'channels/create'

  get 'channels/show'

  get 'channels/destroy'

  get 'messages/index'

  get 'messages/new'

  get 'messages/create'

  get 'messages/show'

  get 'servers/index'

  get 'servers/new'

  get 'servers/create'

  get 'servers/show'

  devise_for :users
  root 'static_pages#root'

  if Rails.env.development?
    authenticate :user do
      mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
    end
  end

  post '/graphql', to: 'graphql#execute'
end
