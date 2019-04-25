module Types
  class UserType < Types::BaseObject
    graphql_name "User"
    description "a user"

    field :id, Int, null: false
    field :email_address, String, null: false, method: :email
    field :screen_name, String, null: false, method: :screenname
  end 
end 
