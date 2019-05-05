module Mutations
  class UserLogin < BaseMutation
    argument :screenname, String, required: true
    argument :password, String, required: true

    type Types::UserType

    def resolve(screenname: nil, password: nil)
      return unless screenname
      
      @user = User.find_for_database_authentication(screenname: screenname)
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
