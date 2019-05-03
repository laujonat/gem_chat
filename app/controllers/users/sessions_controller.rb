# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  def new
    super
  end

  def create; end

  def destroy
    sign_out_and_redirect(current_user)
  end

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end
end
