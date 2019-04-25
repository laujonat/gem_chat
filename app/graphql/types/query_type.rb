module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :test_field, String, null: false, description: "An example field added by the generator"
    def test_field
      "Hello Graphql!"
    end
    
    field :me, Types::UserType, null: false 
    def me
      User.first
    end 
  end
end
