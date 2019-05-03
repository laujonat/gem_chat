# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false, description: 'An example field added by the generator'
    field :me, Types::UserType, null: false
    field :servers, [Types::ServerType], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def test_field
      'Hello Graphql!'
    end

    def me
      context[:current_user]
    end

    def servers
      context[:current_user].servers
    end

    def user(id:)
      User.find(id)
    end
  end
end
