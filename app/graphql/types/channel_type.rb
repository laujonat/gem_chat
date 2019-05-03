# frozen_string_literal: true

module Types
  class ChannelType < Types::BaseObject
    graphql_name 'Channel'
    description 'Server Channels'

    field :id, Int, null: false
    field :name, String, null: false
    field :server, Types::ServerType, null: false


  end
end
