# frozen_string_literal: true

module Types
  class MessageType < Types::BaseObject
    graphql_name 'Message'
    description 'Messages'

    field :id, Int, null: false
    field :body, String, null: false
    field :user, Types::UserType, null: false
    field :channel, Types::ChannelType, null: false
    
  end
end
