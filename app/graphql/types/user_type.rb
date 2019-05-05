# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    graphql_name 'User'
    description 'a user'

    field :id, Int, null: false
    field :email_address, String, null: false, method: :email
    field :screen_name, String, null: false, method: :screenname
    field :servers, [Types::ServerType], null: false
    field :authentication_token, String, null: false, method: :authentication_token



    def servers
      object.servers
    end 
  end
end
