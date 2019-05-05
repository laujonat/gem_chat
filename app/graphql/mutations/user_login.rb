module Mutations
  class UserLogin < BaseMutation
    argument :username, String, required: true
    argument :password, String, required: true

    type Types::UserType

    def resolve(username: nil, password: nil)
      return unless username
      
      @user = User.find_for_database_authentication(username: username)
      if @user && @user.valid_password?(password)
        authentication_token = @user.authentication_token
        context[:warden].set_user(@user, scope: :user)

        return OpenStruct.new(id: @user.id, authentication_token: authentication_token)
      else 
         GraphQL::ExecutionError.new('Invalid username or password.')
      end
      GraphQL::ExecutionError.new('Invalid username or password. ')
    end
  end
end
