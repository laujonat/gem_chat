# frozen_string_literal: true

module Types
  class ServerType < Types::BaseObject
    graphql_name 'Server'
    description 'User servers'

    field :id, Int, null: false
    field :name, String, null: false
    field :user, Types::UserType, null: false

    def name
      object.name + '-' + object.user.username
    end
  end
end
