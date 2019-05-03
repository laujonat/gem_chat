module Mutations
  class CreateChannel < BaseMutation
    # arguments passed to the `resolved` method
    argument :name, String, required: true
    argument :server_id, ID, required: false 

    # return type from the mutation
    type Types::ChannelType

    def resolve(server_id: nil, name: nil)
      Channel.create!(
        name: name,
        server: Server.find(server_id)
      )
    end
  end
end
