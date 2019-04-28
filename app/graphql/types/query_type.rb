# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false, description: 'An example field added by the generator'
    def test_field
      'Hello Graphql!'
    end

    field :me, Types::UserType, null: false
    def me
      context[:current_user]
    end

    field :servers, [Types::ServerType], null: false
    def servers
      context[:current_user].servers
    end
  end
end
