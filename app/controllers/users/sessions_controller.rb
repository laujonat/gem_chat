# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  def new
    super
  end

  # def create
  #   super do
  #     set_user_access_token!
  #   end
  # end

  def create
    super do
      set_user_access_token!
    end
    # @user = User.find_by_username(user_params[:username])
    # if @user
    #   respond_with(@user)
    # else
    #   head :unauthorized
    # end
  end

  # def destroy
  #   # sign_out_and_redirect(current_user)
  #   respond_to do |format|
  #     format.json { head :ok }
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:username)
  end 


  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
