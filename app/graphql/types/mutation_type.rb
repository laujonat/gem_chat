# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_channel, mutation: Mutations::CreateChannel
    field :user_login, mutation: Mutations::UserLogin
  end
end
