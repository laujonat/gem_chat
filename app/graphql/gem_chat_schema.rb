# frozen_string_literal: true

class GemChatSchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)
end
