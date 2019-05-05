# frozen_string_literal: true

module Types
  class AuthType < Types::BaseObject
    graphql_name 'Auth'
    description 'JWT Token Authentication for session'

    
    field :authentication_token, String, null: false, method: :authentication_token
  end
end
